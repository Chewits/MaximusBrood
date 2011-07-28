<?php
class ProfilesController extends AppController {

	var $name = 'Profiles';
	
	function view($username = null){
		if($username == null) {
			//no username specified so redirect to the user's own profile if it exists
			//if not then we redirect to the members page
			if(isset($this->userData))
				$username = $this->userData['User']['username'];
			else
				$this->redirect(array('controller'=>'members'));
		}
		
		$this->set('profile', $this->Profile->User->find('first', array('conditions'=>array('User.username'=>$username))));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid profile', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Profile->save($this->data)) {
				$this->Session->setFlash(__('The profile has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The profile could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Profile->read(null, $id);
		}
		$users = $this->Profile->User->find('list');
		$this->set(compact('users'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for profile', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Profile->delete($id)) {
			$this->Session->setFlash(__('Profile deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Profile was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>