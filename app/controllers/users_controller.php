<?php
class UsersController extends AppController {

	var $name = 'Users';
	var $uses = array('User', 'Log');
	var $helpers = array('Battlenet', 'Chart', 'Bbcode', 'Html', 'Form', 'Javascript');

	function beforeFilter() {
		parent::beforeFilter();
	}

	function index() {
		$this->User->recursive = 1;
		$this->paginate = array('order'=>array('Rank.order'=>'DESC'), 'conditions'=>array('Rank.title !='=>'Guest', 'Rank.exmember !='=>'1')); //order users correctly and do not select guests
		$this->set('users', $this->paginate());
	}

	function view($userid = null) {
		if($userid == null) {
			//no username specified so redirect to the user's own profile if it exists
			//if not then we redirect to the members page
			if(isset($this->userData['User']['id']))
				$userid = $this->userData['User']['id'];
				if(!$this->Permissions->check('Edit User')) {
					$this->Menu->addChild('Change Password', array('controller'=>'members', 'action'=>'changepassword', $userid), true); //add the reply link to the menu
				}
			else
				$this->redirect(array('controller'=>'users', 'action'=>'index'));
		}
		
		$user = $this->User->find('first', array('conditions'=>array('User.id'=>$userid)));
		
		//get users promo history if required
		if($this->Permissions->check('Edit User')) {
			if($user['Rank']['exmember'] == 0) {
				$this->Menu->addChild('Promote', array('controller'=>'members', 'action'=>'promote', $userid), true); //add the reply link to the menu
				$this->Menu->addChild('Demote', array('controller'=>'members', 'action'=>'promote', $userid, 'false'), true); //add the reply link to the menu
				$this->Menu->addChild('Dismiss', array('controller'=>'members', 'action'=>'reinstate', $userid, 'false'), true);
				$this->Menu->addChild('Change Password', array('controller'=>'members', 'action'=>'changepassword', $userid), true); //add the reply link to the menu
			}
			else {
				$this->Menu->addChild('Reinstate', array('controller'=>'members', 'action'=>'reinstate', $userid), true); //add the reply link to the menu
			}
			
			$this->set('promotions', $this->Log->find('all', array('conditions'=>array('Log.additional_id'=>$userid, 'OR'=>array('Log.description'=>array('Promoted', 'Demoted'))), 'order'=>array('Log.id'=>'DESC'))));
		}
		
		//find if the user is allowed to edit this profile
		if($this->Permissions->check('Edit User') || $user['User']['username'] == $this->userData['User']['username']) {
			$this->Menu->addChild('Edit Profile', array('controller'=>'members', 'action'=>'edit', $userid), true); //add the reply link to the menu
		}
		
		if($this->Permissions->check('Edit Permissions'))
			$this->Menu->addChild('Edit Permissions', array('controller'=>'permissions', 'action'=>'edit', $userid), true); //add the reply link to the menu
			
		$last_log = $this->Log->find('first', array('conditions'=>array('Log.user_id'=>$userid), 'order'=>array('Log.id'=>'DESC')));
		$user['User']['last_active'] = $last_log['Log']['timestamp'];
		
		//get users profile
		$this->set('profile', $user);
	}
	
	function show($rank_type) {		
		$conditions = array('Rank.title'=>$rank_type);
		$this->paginate =  array('conditions'=>$conditions);
		$this->set('users', $this->paginate());
	}

	function add() {
		$this->Permissions->lock('Add User');
	
		if (!empty($this->data)) {	
			$this->data['User']['join_date'] = DboSource::expression('NOW()');
			
			//set default permissions
			$this->User->Permission->recursive = 0;
			$defaultPermissions = $this->User->Permission->find('all', array('conditions'=>array('Permission.default'=>'1')));
			foreach($defaultPermissions as $permission)
				$this->data['Permission']['Permission'][] = $permission['Permission']['id']; 	
					
			$this->User->create();
			if ($this->User->save($this->data)) {
				$this->data['Profile']['user_id'] = $this->User->id; //set the user_id in the profile data so it can save the profile data
				if($this->User->Profile->save($this->data)) {
					$this->Session->setFlash('The user has been saved');
					$this->redirect(array('action' => 'index'));
				}
			} else {
				$this->Session->setFlash('The user could not be saved. Please, try again.', 'default', array('class'=>'error-message'));
			}
		}
		$ranks = $this->User->Rank->find('list', array('conditions'=>array('OR'=>array('Rank.title'=>array('Guest', 'Trialist')))));
		$groups = $this->User->Group->find('list');
		$permissions = $this->User->Permission->find('list');
		$this->set(compact('ranks', 'groups', 'permissions'));
	}

	function edit($id = null) {
		$user = $this->User->find('first', array('conditions'=>array('User.id'=>$id)));
		
		if($this->userData['User']['username'] != $user['User']['username']) {
			$this->Permissions->lock('Edit User');
		}
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash('Invalid user', 'default', array('class'=>'error-message'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			$this->data['Profile']['user_id'] = $this->data['User']['id'];
		
			if ($this->User->save($this->data)) {
				if($this->User->Profile->save($this->data)) {
					$this->Session->setFlash('The user has been saved');
					$this->redirect(array('action' => 'index'));
				}
			} else {
				$this->Session->setFlash('The user could not be saved. Please, try again.', 'default', array('class'=>'error-message'));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->User->read(null, $id);
		}
		$ranks = $this->User->Rank->find('list');
		$groups = $this->User->Group->find('list');
		$permissions = $this->User->Permission->find('list');
		$this->set(compact('ranks', 'groups', 'permissions'));
	}

	function delete($id = null) {
		$this->Permissions->lock('Delete User');
		
		if (!$id) {
			$this->Session->setFlash('Invalid id for user', 'default', array('class'=>'error-message'));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->User->delete($id)) {
			$this->Session->setFlash('User deleted');
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash('User was not deleted', 'default', array('class'=>'error-message'));
		$this->redirect(array('action' => 'index'));
	}
	
	function login() { 
		//TODO: log this
		//$this->User->manualLog('Login', '$this->)
		if($this->Auth->user('id')) { 
			if(!$this->Permissions->check('Allow Login')) {
				$this->redirect(array('controller'=>'users', 'action'=>'logout'));
			}
		} 
	}
	
	function logout() { 
		//really simple log out
		//TODO: log this
		$this->redirect($this->Auth->logout()); 
	}
	
	function promote($id, $promote = 'true') {
		$this->Permissions->lock('Edit User');
	
		//check to see if we have set a user id
		if(!$id) {
			$this->Session->setFlash('Invalid id for user', 'default', array('class'=>'error-message'));
			$this->redirect(array('action'=>'index'));
		}
		
    	//get the user data
		$user = $this->User->find('first', array('conditions'=>array('User.id'=>$id)));
    	
    	//find the new rank
    	$up_or_down = '>';
    	$order = 'ASC';
		if($promote == 'false') {
			$up_or_down = '<';
			$order = 'DESC';
		}
    	
    	$nextrank = $this->User->Rank->find('first', array('conditions'=>array('Rank.order '.$up_or_down=>$user['Rank']['order'], 'Rank.exmember'=>0), 'order'=>array('Rank.order'=>$order)));
		
    	//update the user then save
    	$user['User']['rank_id'] = $nextrank['Rank']['id'];
    	
    	$promo_or_demo = 'Promoted';
    	if($promote == 'false')
			$promo_or_demo = 'Demoted';
			
    	if($this->User->save($user)) { //try to save the promotion
    		$this->Session->setFlash('User '.strtolower($promo_or_demo));
    		$this->User->manualLog('User', $promo_or_demo, $nextrank['Rank']['title'], $user['User']['id']);
    		$this->redirect(array('action'=>'view', $user['User']['id']));
    	}
    	else {				
    		$this->Session->setFlash('User was not '.strtolower($promo_or_demo), 'default', array('class'=>'error-message'));
    		$this->redirect(array('action'=>'view', $user['User']['id']));
    	}
	}
	
	function stats($id) {
		$today = date('Y-m-d'); //get todays date
		$lastdate = $today;
		$newdate = $today;
		
		$weekinfo = array();
		
		$i = 0;
		while($i < 14) {
			$newdate = date('Y-m-d', strtotime('-1 day', strtotime($lastdate)));
			$conditions = array('Log.user_id'=>$id, 
			'Log.timestamp <'=>$lastdate.' 00:00:00', 
			'Log.timestamp >'=>$newdate.' 00:00:00', 
			'Log.title'=>'View');
			$weekinfo[date('dS', strtotime($lastdate))] = $this->Log->find('count', array('conditions'=>$conditions));
			
			$lastdate = $newdate;
			$i++;
		}
		
		$weekinfo = array_reverse($weekinfo, true);
		
		$this->set('pageviews', array('Weekly'=>$weekinfo));
	}
	
	function exmembers() {
		//lets get the ex member ranks
		$this->User->Rank->recursive = 0;
		$this->set('ranks', $this->User->Rank->find('all', array('conditions'=>array('Rank.exmember'=>'1'))));
	}
	
	function reinstate($user_id = null, $reinstate = true) {
		$user = $this->User->read(null, $user_id);
		
		if($reinstate == 'true') {
			if(!empty($this->data)) {
				//have to save the user			
				if($this->User->save($this->data)) {
					$this->User->manualLog('User', 'Reinstate', $user['Rank']['title'], $user['User']['id']);
					if($user['Rank']['exmember'] == '1') {
						$this->Session->setFlash('User reinstated.', 'default');
						$this->redirect(array('controller'=>'users', 'action'=>'index'));
					} else {
						$this->Session->setFlash('User dismissed.', 'default');
						$this->redirect(array('controller'=>'users', 'action'=>'index'));
					}
				}
			} else {
				$ranks = $this->User->Rank->find('list', array('conditions'=>array('Rank.exmember'=>'0'), 'order'=>array('Rank.order'=>'DESC')));
				$this->data = $user;
				$this->set('ranks', $ranks);
			}
		} else {
			$ranks = $this->User->Rank->find('list', array('conditions'=>array('Rank.exmember'=>'1'), 'order'=>array('Rank.order'=>'DESC')));
			$this->data = $user;
			$this->set('ranks', $ranks);
		}
    		
	}
	
	function changepassword($id = null) {
		if($this->data) {
			$this->Permissions->lock('Edit User');
			if($this->data['User']['password'] == $this->Auth->password($this->data['User']['passwordconfirm'])) {
				if($this->User->save($this->data)) {
					$this->Session->setFlash('Your password has been updated.');
					$this->redirect(array('controller'=>'members', 'action'=>'view', $this->data['User']['id']));
				}
			} else {
				$this->Session->setFlash('Passwords do not match.', 'default', array('class'=>'error-message'));
			}
		} else {
			if($id != null && ($this->Permissions->check('Edit User') || $id == $this->userData['User']['id'])) {
				$this->data = $this->User->read(null, $id);
				$this->data['User']['password'] = '';
			} else {
				$this->Session->setFlash('You are not authorised to do that.');
				$this->redirect(array('controller'=>'members'));
			}
		}
	}
}
?>