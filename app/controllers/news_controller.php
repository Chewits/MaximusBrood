<?php
class NewsController extends AppController {
	var $name = 'News';
	var $uses = 'Post';
	var $helpers = array('bbcode', 'Html', 'Form', 'Javascript');
	
	function index() {
		$this->Post->recursive = 0;
		
		$news = $this->Post->find('all', array('order'=>array('Post.id'=>'DESC'), 'conditions'=>array('Board.title'=>'News')));
		
		//loop though and count replies
		for($i = 0; $i < count($news); $i++) {
			$id = $news[$i]['Post']['id'];
			$news[$i]['Post']['replies'] = $this->Post->find('count', array('conditions'=>array('Post.post_id'=>$id)));
		}
		
		$this->set('news', $news);
	}

	function add() {	
		$this->Permissions->lock('Add News');
	
		if (!empty($this->data)) {
			$this->data['Post']['user_id'] = $this->userData['User']['id'];
			$this->data['Post']['timestamp'] = DboSource::expression('NOW()');
			$this->data['Post']['last_user_id'] = $this->userData['User']['id'];
			$this->data['Post']['last_post'] = DboSource::expression('NOW()');
			$this->data['Post']['board_id'] = 5;
		
			$this->Post->create();
			if ($this->Post->save($this->data)) {
    			$this->Post->manualLog('News', 'Add', '', $this->Post->id);
				$this->Session->setFlash('The news has been saved.');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash('The news could not be saved. Please, try again.', 'default', array('class'=>'error-message'));
			}
		}
	}
	
	function edit($id = null) {
		$this->Permissions->lock('Edit News');
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash('That article does not exist.', 'default', array('class'=>'error-message'));
			$this->redirect(array('action' => 'index'));
		}
		
		$post =	$this->Post->read(null, $id);
		if($post['Board']['title'] != 'News') {
			$this->Session->setFlash('That article does not exist.', 'default', array('class'=>'error-message'));
			$this->redirect(array('action' => 'index'));
		}
		
		if (!empty($this->data)) {
			if ($this->Post->save($this->data)) {
				$this->Session->setFlash('The article has been updated.');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash('The article could not be updated. Please, try again.', 'default', array('class'=>'error-message'));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Post->read(null, $id);
		}
	}
	
	function delete($id = null) {
		$this->Permissions->lock('Delete News');
	
		if (!$id) {
			$this->Session->setFlash('That article does not exist.', 'default', array('class'=>'error-message'));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Post->delete($id)) {
			$this->Session->setFlash('The article has been deleted.');
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash('Article was not deleted. Please try again later.', 'default', array('class'=>'error-message'));
		$this->redirect(array('action' => 'index'));
	}
}
?>