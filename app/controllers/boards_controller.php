<?php
class BoardsController extends AppController {

	var $name = 'Boards';

	function index() {
		$this->Board->recursive = 0;
		$this->set('boards', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid board', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('board', $this->Board->read(null, $id));
	}

	function add() {
		$this->Permissions->lock('Add Board');
	
		if (!empty($this->data)) {
			$this->Board->create();
			if ($this->Board->save($this->data)) {
				$this->Session->setFlash(__('The board has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The board could not be saved. Please, try again.', true));
			}
		}
		$permissions = $this->Board->Permission->find('list');
		$this->set(compact('permissions'));
	}

	function edit($id = null) {
		$this->Permissions->lock('Edit Board');
	
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid board', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Board->save($this->data)) {
				$this->Session->setFlash(__('The board has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The board could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Board->read(null, $id);
		}
		$permissions = $this->Board->Permission->find('list');
		$this->set(compact('permissions'));
	}

	function delete($id = null) {
		$this->Permissions->lock('Delete Boards');
	
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for board', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Board->delete($id)) {
			$this->Session->setFlash(__('Board deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Board was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>