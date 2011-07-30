<?php
class RanksController extends AppController {

	var $name = 'Ranks';

	function index() {
		$this->Rank->recursive = 0;
		$this->set('ranks', $this->Rank->find('all', array('order'=>array('Rank.order'=>'DESC'), 'conditions'=>array('Rank.exmember'=>'0'))));
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash('Invalid rank', 'default', array('class'=>'error-message'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Rank->recursive = 2;
		$this->Rank->User->unbindModel(array('hasAndBelongsToMany'=>array('Group', 'Permission')));
		$this->set('rank', $this->Rank->read(null, $id));
	}

	function add() {
		$this->Permissions->lock('Add Rank');
	
		if (!empty($this->data)) {
			$this->Rank->create();
			if ($this->Rank->save($this->data)) {
				$this->Session->setFlash('The rank has been saved');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash('The rank could not be saved. Please, try again.', 'default', array('class'=>'error-message'));
			}
		}
	}

	function edit($id = null) {
		$this->Permissions->lock('Edit Rank');
	
		if (!$id && empty($this->data)) {
			$this->Session->setFlash('Invalid rank', 'default', array('class'=>'error-message'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Rank->save($this->data)) {
				$this->Session->setFlash('The rank has been saved');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash('The rank could not be saved. Please, try again.', 'default', array('class'=>'error-message'));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Rank->read(null, $id);
		}
	}

	function delete($id = null) {
		$this->Permissions->lock('Delete Rank');
	
		if (!$id) {
			$this->Session->setFlash('Invalid rank', 'default', array('class'=>'error-message'));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Rank->delete($id)) {
			$this->Session->setFlash('Rank deleted.');
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash('Rank was not deleted.', 'default', array('class'=>'error-message'));
		$this->redirect(array('action' => 'index'));
	}
	
	function moveUp($id) {
		$this->Permissions->lock('Edit Rank');
		$this->Rank->moveUp($id, array('Rank.exmember'=>0));
		$this->redirect(Controller::referer());
	}
	
	function moveDown($id) {	
		$this->Permissions->lock('Edit Rank');
		$this->Rank->moveDown($id, array('Rank.exmember'=>0));	
		$this->redirect(Controller::referer());
	}
}
?>