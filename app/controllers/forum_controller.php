<?php
class ForumController extends AppController {

	var $name = 'Forum';
	var $uses = array('Post', 'Log');
	var $helpers = array('Geolocation', 'bbcode', 'Html', 'Form', 'Javascript', 'Time');
	var $paginate;
	var $threadSize = 10;

	function beforeFilter() {
		parent::beforeFilter();
		
		$this->Permissions->lock('View Forum'); //this function locks this page to anyone who doesn't have the view forum permission
	}

	function index() {
		$this->Post->recursive = 0;
		
		$conditions = array('Post.post_id'=>'0', 'OR'=>array('Post.board_id'=>array()));
		
		//check which boards the user is allowed to see and dump the result in the boards variable
		$this->Post->Board->unbindModel(array('hasMany'=>array('Post')));
		$boards = $this->Post->Board->find('all');
		foreach($boards as $board) {
			if($this->Permissions->check($board['Permission']['title']) || $board['Board']['permission_id'] == 0 || $board['Board']['restricted'] == 0) {
				$conditions['OR']['Post.board_id'] = array_merge(array($board['Board']['id']), $conditions['OR']['Post.board_id']);
			}
		}

		$this->paginate = array(
			'conditions'=>$conditions,
			'order'=>array('stuck'=>'DESC', 'last_post'=>'DESC')
			);
		
		//get the post data so we can work on it
		$posts = $this->paginate();
		
		//loop though and count replies
		for($i = 0; $i < count($posts); $i++) {
			$id = $posts[$i]['Post']['id'];
			$posts[$i]['Post']['replies'] = $this->Post->find('count', array('conditions'=>array('Post.post_id'=>$id)));
		}
		
		//loop through and build thread pager
		for($i = 0; $i < count($posts); $i++) {
			$pagernumbers = '';
			for($j = 0; $j <= $posts[$i]['Post']['replies']/$this->threadSize && $j <= 10; $j++) {
				$pagernumbers .= '<a href="forum/view/'.$posts[$i]['Post']['id'].'/page:'.($j+1).'">'.($j+1).'</a>, ';
			}
			
			if($pagernumbers != '<a href="forum/view/'.$posts[$i]['Post']['id'].'/page:1">1</a>, ')
				$posts[$i]['Post']['pager'] = '(Pages: '.rtrim($pagernumbers, ', ').')';
			else
				$posts[$i]['Post']['pager'] = '';
		}
		
		//send the new data to the view
		$this->set('posts', $posts);
	}

	function view($id = null) {		
		$this->Permissions->lock('View Forum');
		
		if (!$id) { //check the ID is set
			$this->Session->setFlash('Invalid thread', 'default', array('class'=>'error-message'));
			$this->redirect(array('action' => 'index'));
		}
		
		//set up the model to get only the data that is needed
		$this->Post->recursive = 2;		
		$this->Post->unbindModel(array('hasMany'=>array('Post')), false);
		$this->Post->Board->unbindModel(array('hasMany'=>array('Post')), false);
		$this->Post->User->unbindModel(array('hasAndBelongsToMany'=>array('Permission')), false);
		$this->Post->Last_User->unbindModel(array('hasAndBelongsToMany'=>array('Permission')), false);
		
		//lock the thread down if the permissions aren't right
		$thread = $this->Post->find('first', array('conditions'=>array('Post.id'=>$id)));
		if($thread['Board']['restricted'] == 1) {
			//if this board is restricted, that means we need the correct permissions to post AND view, not just to view
			$this->Permissions->lock($thread['Board']['Permission']['title'], array('controller'=>'forum', 'action'=>'index'));
		}
		
		//build menu
		if(!$thread['Post']['locked'])
			$this->Menu->addChild('Add Reply', array('controller'=>'forum', 'action'=>'reply', $id)); //add the reply link to the menu
		
		if($this->Permissions->check('Edit Forum')) {
			$locktext = 'Lock Thread';
			if($thread['Post']['locked']) $locktext = 'Unlock Thread';
			
			$sticktext = 'Stick Thread';
			if($thread['Post']['stuck']) $sticktext = 'Unstick Thread';
			
			$this->Menu->addChild($locktext, array('controller'=>'forum', 'action'=>'lock', $id), true); //add the reply link to the menu
			$this->Menu->addChild($sticktext, array('controller'=>'forum', 'action'=>'stick', $id), true); //add the reply link to the menu
		}
		
		//add the current user to the thread viewers
		$pos = strpos($thread['Post']['viewers'], ';'.$this->userData['User']['id'].';');
		if($pos === false) {
			$thread['Post']['viewers'] .= $this->userData['User']['id'].';';
			$this->Post->id = $thread['Post']['id'];
			$this->Post->saveField('viewers', $thread['Post']['viewers']);
		}
		
		//get the data and send to the view
		$this->paginate = array('limit'=>$this->threadSize, 'conditions'=>array('OR'=>array('Post.id'=>$id, 'Post.post_id'=>$id)), 'order'=>array('Post.id'=>'ASC'));
		$this->set('replyCount', $this->Post->find('count', array('conditions'=>array('Post.post_id'=>$id))));
		$this->set('thread',  $thread);
		$this->set('posts', $this->paginate());
	}

	function add() {	
		$this->Permissions->lock('Add Forum');
	
		if (!empty($this->data)) { //check if this is a postback
			$this->data['Post']['user_id'] = $this->userData['User']['id'];
			$this->data['Post']['timestamp'] = DboSource::expression('NOW()');
			$this->data['Post']['last_user_id'] = $this->userData['User']['id'];
			$this->data['Post']['last_post'] = DboSource::expression('NOW()');
			$this->data['Post']['viewers'] = ';'; 
		
			$this->Post->create();
			if ($this->Post->save($this->data)) {
    			$this->Post->manualLog('Forum', 'Add', '', $this->Post->id);
				$this->Session->setFlash('The post has been saved');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash('The post could not be saved. Please, try again.', 'default', array('class'=>'error-message'));
			}
		}
		
		//check which boards the user is allowed to post on
		$this->Post->Board->unbindModel(array('hasMany'=>array('Post')));
		$boards = array();
		$boards_temp = $this->Post->Board->find('all');
		foreach($boards_temp as $board) {
			if($this->Permissions->check($board['Permission']['title']) || $board['Board']['permission_id'] == 0) {
				$boards[$board['Board']['id']] = $board['Board']['title'];
			}
		}
		
		$posts = $this->Post->Post->find('list');
		$users = $this->Post->User->find('list');
		
		$this->set(compact('posts', 'users', 'boards'));
	}
	
	function reply($id = null) {	
		$this->Permissions->lock('Add Forum');
		
        //check if the post is locked (i.e. no replys allowed)
		$post = $this->Post->find('first', array('conditions'=>array('Post.id'=>$id)));
		if($post['Post']['locked']) {
			$this->Session->setFlash('You are not authorized to do that.', 'default', array('class'=>'error-message'));
			$this->redirect(array('action'=>'view', $id));
		}
		
		if (!$id) { //check we've got the right parameters
			$this->Session->setFlash('Invalid thread', 'default', array('class'=>'error-message'));
			$this->redirect(array('action' => 'index'));
		}
        
        //check if it's a postback (i.e. are we saving data?)
		if(!empty($this->data)) {
			$this->data['Post']['user_id'] = $this->userData['User']['id'];
			$this->data['Post']['timestamp'] = DboSource::expression('NOW()');
			$this->data['Post']['post_id'] = $id;
		
			$this->Post->create();
			if ($this->Post->save($this->data)) {
				
				//if we managed to save the reply then update the parent thread
				$parent_data = array(
					'Post' => array(
						'id' => $this->data['Post']['post_id'],
						'last_user_id' => $this->data['Post']['user_id'],
						'last_post' => $this->data['Post']['timestamp'],
						'viewers' => ';'
					)
				);				
				$this->Post->save($parent_data);
				$this->Post->manualLog('Forum', 'Edit', $this->userData['User']['username'], $this->Post->id);
				
				$this->Session->setFlash('The post has been saved.');
				$this->redirect(array('action' => 'view', $id));
			} else {
				$this->Session->setFlash('The post could not be saved. Please, try again.', 'default', array('class'=>'error-message'));
			}
		}
		
		$this->set('id', $id);
		$this->set('thread',  $this->Post->find('first', array('conditions'=>array('Post.id'=>$id))));
	}

	function edit($id = null) {
		$this->Permissions->lock('Edit Forum');
		
        //check the post we want to edit exists
		if (!$id && empty($this->data)) {
			$this->Session->setFlash('That post does not exist.');
			$this->redirect(array('action' => 'index'));
		}
		
        //check if it's a postback (i.e. are we saving data?)
		if (!empty($this->data)) {
			$post = $this->Post->read(null, $id);
			if ($this->Post->save($this->data)) {
				$this->Session->setFlash('The post has been updated.');
				
				if($post['Post']['post_id'] == 0)
					$post['Post']['post_id'] = $post['Post']['id'];
				
				$this->redirect(array('action' => 'view', $post['Post']['post_id']));
			} else {
				$this->Session->setFlash('The post could not be updated. Please, try again.');
			}
		}
		
        //if it's not a postback then let's populate the edit boxes
		if (empty($this->data)) {
			$this->data = $this->Post->read(null, $id);
		}
        
        //find the appropriate lists for the drop down boxes
		$posts = $this->Post->Post->find('list');
		$users = $this->Post->User->find('list');
		$boards = $this->Post->Board->find('list');
        
        //send it all to the view
		$this->set(compact('posts', 'users', 'boards'));
	}

	function delete($id = null) {	
		$this->Permissions->lock('Delete Forum');
	
		if (!$id) {
			$this->Session->setFlash('That post does not exist.');
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Post->delete($id)) {
			$this->Post->deleteAll(array('Post.post_id'=>$id));
			$this->Session->setFlash('The post has been deleted.');
			$this->redirect(array('action'=>'index'));
		}
			$this->Session->setFlash('The post has not been deleted.', 'default', array('class'=>'error-message'));
		$this->redirect(array('action' => 'index'));
	}
	
	function lock($id = null) {	
		$this->Permissions->lock('Edit Forum');
		
		$post = $this->Post->find('first', array('conditions'=>array('Post.id'=>$id)));
		$post['Post']['locked'] = ($post['Post']['locked'] == 0) ? 1 : 0;
		
		if ($this->Post->save($post)) {
			$this->Session->setFlash(__('The post has been saved', true));
			$this->redirect(array('action'=>'view', $id));
		} else {
			$this->Session->setFlash('The post could not be saved. Please, try again.', 'default', array('class'=>'error-message'));
			$this->redirect(array('action'=>'view', $id));
		}
	}
	
	function stick($id = null) {	
		$this->Permissions->lock('Edit Forum');
		
		$post = $this->Post->find('first', array('conditions'=>array('Post.id'=>$id)));
		$post['Post']['stuck'] = ($post['Post']['stuck'] == 0) ? 1 : 0;
		
		if ($this->Post->save($post)) {
			$this->Session->setFlash(__('The post has been saved', true));
			$this->redirect(array('action'=>'view', $id));
		} else {
			$this->Session->setFlash('The post could not be saved. Please, try again.', 'default', array('class'=>'error-message'));
			$this->redirect(array('action'=>'view', $id));
		}
	}
	
	function info($id = null) {
		//http://api.ipinfodb.com/v3/ip-city/?key=a39e875d5b3d9a1901a59f39ebcc52863f529f9ff873b466437f718895983d0c

		$this->Permissions->lock('Forum Info');
	
		if (!$id) {
			$this->Session->setFlash('That post does not exist.', 'default', array('class'=>'error-message'));
			$this->redirect(array('action' => 'index'));
		}
		
		
		$this->Post->recursive = 2;		
		$post = $this->Post->find('first', array('conditions'=>array('Post.id'=>$id)));
		$log = $this->Log->find('first', array('conditions'=>array('additional_id'=>$id)));
		$this->set('log', $log);
		$this->set('post', $post);
	}
}
?>