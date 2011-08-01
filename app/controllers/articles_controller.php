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
		if($article['Category']['full'] == true) {
			$this->set('category', $category);
			$this->render('viewcategoryfull');
		}
	}

	function add() {
		$this->Permissions->lock('Add Article');
	
		if (!empty($this->data)) {
			$this->Article->create();
			if ($this->Article->save($this->data)) {
				$this->Session->setFlash(__('The article has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The article could not be saved. Please, try again.', true));
			}
		}
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
		$this->Category->recursive = 0;
		$this->set('categories', $this->Article->Category->find('all'));
	}
}
?>