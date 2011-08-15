<?php
class LinksController extends AppController {

	var $name = 'Links';

	function index() {
		$this->Permissions->lock('Add Link');
		$this->Link->recursive = 0;
		$this->paginate = array('order'=>array('Link.order'=>'DESC'));
		$this->set('links', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid link', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('link', $this->Link->read(null, $id));
	}

	function add() {
		$this->Permissions->lock('Add Link');
	
		if (!empty($this->data)) {
			$this->Link->create();
			if ($this->Link->save($this->data)) {
				$this->Session->setFlash(__('The link has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The link could not be saved. Please, try again.', true));
			}
		}
		$permissions = $this->Link->Permission->find('list');
		$permissions[0] = 'None';
		ksort($permissions);
		$this->set(compact('permissions'));
		
		$links = $this->Link->find('list');
		$links[0] = 'None';
		ksort($links);
		$this->set(compact('links'));
	}

	function edit($id = null) {	
		$this->Permissions->lock('Edit Link');
	
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid link', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Link->save($this->data)) {
				$this->Session->setFlash(__('The link has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The link could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Link->read(null, $id);
		}
		$permissions = $this->Link->Permission->find('list');
		$permissions[0] = 'None';
		ksort($permissions);
		$this->set(compact('permissions'));
		
		$links = $this->Link->find('list');
		$links[0] = 'None';
		ksort($links);
		$this->set(compact('links'));
	}

	function delete($id = null) {
		$this->Permissions->lock('Delete Link');
	
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for link', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Link->delete($id)) {
			$this->Session->setFlash(__('Link deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Link was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	
	function moveUp($id) {
		$this->Link->moveUp($id);
		$this->redirect(Controller::referer());
	}
	
	function moveDown($id) {
		$this->Link->moveDown($id);	
		$this->redirect(Controller::referer());
	}
}
?>