<?php
class ArticlesController extends AppController {

	var $name = 'Articles';

	function index() {
		$this->Article->recursive = 0;
		$this->set('articles', $this->paginate());
	}

	function view($id) {
		if (!$id) {
			$this->Session->setFlash('That article does not exist!', 'default', array('class'=>'error-message'));
			$this->redirect(array('action' => 'index'));
		}
		
		//get relevant page data
		$article = $this->Article->read(null, $id);
		$category = $this->Article->Category->find('first', array('conditions'=>array('Category.id'=>$article['Category']['id'])));
		
		$this->set('article', $article);
		
				
		//check to see if this article is one record in a bigger 
		//article... ie. rules and change the view accordingly
		//TODO: maybe pass this on to the category page?
		if($article['Category']['full'] == true) {
			$this->redirect(array('controller'=>'categories', 'action'=>'view', $category['Category']['id']));
			
			$this->Menu->setAlias(strtolower($article['Category']['title']));
			$this->Menu->addChild('Add '.Inflector::singularize($category['Category']['title']), array('controller'=>'members', 'action'=>'promote', 'false'), true); //add the reply link to the menu	
			$this->set('category', $category);
			$this->render('viewcategory');
		} else {
			$this->Menu->setAlias(strtolower($article['Article']['title']));
		}
	}

	function add($id = null) {
		$this->Permissions->lock('Add Article');
	
		if (!empty($this->data)) {
			$this->data['Post']['user_id'] = $this->userData['User']['id'];
			
			$this->Article->create();
			if ($this->Article->save($this->data)) {
				$this->Session->setFlash(__('The article has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The article could not be saved. Please, try again.', true));
			}
		}
		
		$this->data['Article']['category_id'] = $id;
		$categories = $this->Article->Category->find('list');
		$users = $this->Article->User->find('list');
		$this->set(compact('links', 'categories', 'users'));
	}

	function edit($id = null) {
		$this->Permissions->lock('Edit Article');
	
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid article', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Article->save($this->data)) {
				$this->Session->setFlash(__('The article has been saved', true));
				$this->redirect(array('action' => 'view', $id));
			} else {
				$this->Session->setFlash(__('The article could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Article->read(null, $id);
		}
		$categories = $this->Article->Category->find('list');
		$users = $this->Article->User->find('list');
		$this->set(compact('categories', 'users'));
	}

	function delete($id = null) {
		$this->Permissions->lock('Delete Article');
	
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for article', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Article->delete($id)) {
			$this->Session->setFlash(__('Article deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Article was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	
	function moveUp($id) {
		$this->Permissions->lock('Edit Rank');
		$article = $this->Article->read(null, $id);
		$this->Article->moveUp($id, array('Article.category_id'=>$article['Article']['category_id']));
		$this->redirect(Controller::referer());
	}
	
	function moveDown($id) {	
		$this->Permissions->lock('Edit Rank');
		$article = $this->Article->read(null, $id);
		$this->Article->moveDown($id, array('Article.category_id'=>$article['Article']['category_id']));	
		$this->redirect(Controller::referer());
	}
	
	function summary() {
		//$this->Menu->setAlias('pages');
		//We are retrieving parent categories only, so we can unbind the parent category property.
		$this->Article->Category->unbindModel(array('belongsTo'=>array('ParentCategory')));
		$this->set('categories', $this->Article->Category->find('all', array('conditions'=>array('Category.category_id'=>0))));
	}
}
?>