<?php
class PermissionsController extends AppController {

	var $name = 'Permissions';
	var $uses = array('User', 'Permission');

	function beforeFilter() {
		parent::beforeFilter();
		
		$this->Permissions->lock('Edit Permissions');
	}

	function index() {
		$this->Permission->recursive = 0;
		$this->set('permissions', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid permission', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('permission', $this->Permission->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Permission->create();
			if ($this->Permission->save($this->data)) {
				$this->Session->setFlash(__('The permission has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The permission could not be saved. Please, try again.', true));
			}
		}
		$users = $this->Permission->User->find('list');
		$this->set(compact('users'));
	}

	function edit($id = null) {
		$user = $this->User->find('first', array('conditions'=>array('User.id'=>$id)));
	
		if($this->data) {
			//we have a custom implementation here so need to rewrite the data to the correct format (that required by cakephp)
			$new_permissions = array();
			foreach($this->data['Permission'] as $key=>$value) {
				if($value == 0) {
					unset($this->data['Permission'][$key]);
				} else {
					$new_permissions[] = $key;
				}
			}
			$this->data['Permission'] = $new_permissions; //overwrite our custom permission format with the cakephp required format
			
			
			
			if ($this->User->save($this->data)) {
				$this->Session->setFlash('The user\'s permissions have been updated.');
				
				//if successful, update the log in an appropriate manner
				$this->User->manualLog('Permissions', 'Edit');
				
				$this->redirect(array('controller'=>'members', 'action' => 'view', $user['User']['id']));
			} else {
				$this->Session->setFlash('The permissions could not be saved. Please, try again.');
			}
			//parse the permissions data
		}
		else {
			//we have not yet saved the info so just pass the stuff reqired to display it
			$this->set('user', $user); //send user data to view
			$this->Permission->recursive = -1; //retrieve only the permissions themselves, not users with those permissions
			$this->set('permissions', $this->Permission->find('all')); //send permissions data to view
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for permission', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Permission->delete($id)) {
			$this->Session->setFlash(__('Permission deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Permission was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>