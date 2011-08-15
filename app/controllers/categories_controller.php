<?php
class CategoriesController extends AppController {

	var $name = 'Categories';
	var $uses = array('Category', 'Link');

	function index() {
		//We are retrieving parent categories only, so we can unbind the parent category property.
		$this->Category->unbindModel(array('belongsTo'=>array('ParentCategory')));
		$this->set('categories', $this->Category->find('all', array('conditions'=>array('Category.category_id'=>0))));
	}

	function view($id = null) {		
		//get relevant page data
		$category = $this->Category->find('first', array('conditions'=>array('Category.id'=>$id)));
		$this->Menu->setAlias(strtolower($category['Category']['title']));
		$this->Menu->addChild('Add '.Inflector::singularize($category['Category']['title']), array('controller'=>'articles', 'action'=>'add', $category['Category']['id']), true); //add the reply link to the menu	
		$this->set('category', $category);
	}

	function add() {
		$this->Permissions->lock('Add Category');
	
		if (!empty($this->data)) {
			$this->Category->create();
			
			if ($this->Category->save($this->data)) {
				if($this->data['Category']['menu'] == '1') {
					$link = array('Link'=>array(
						'title'=>$this->data['Category']['title'],
						'description'=>$this->data['Category']['description'],
						'controller'=>'categories',
						'action'=>'view/'.$this->Category->id,
						'alias'=>strtolower($this->data['Category']['title'])
						)
					);
					$this->Link->userData = $this->userData;
					$this->Link->save($link);
				}
			
				$this->Session->setFlash(__('The category has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The category could not be saved. Please, try again.', true));
			}
		}
		$this->set(compact('categories'));
	}

	function edit($id = null) {
		$this->Permissions->lock('Edit Category');
	
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid category', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Category->save($this->data)) {
				$this->Session->setFlash(__('The category has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The category could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Category->read(null, $id);
		}
		$this->set(compact('categories'));
	}

	function delete($id = null) {
		$this->Permissions->lock('Delete Category');
	
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for category', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Category->delete($id)) {
			$this->Session->setFlash(__('Category deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Category was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>