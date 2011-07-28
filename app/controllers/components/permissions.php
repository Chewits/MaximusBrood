<?php
class PermissionsComponent extends Object {
	var $controller;
	var $failURL = '/';
	var $enabled;
	
	//called before Controller::beforeFilter()
	function initialize(&$controller, $settings = array()) {
		// saving the controller reference for later use
		$this->controller =& $controller;
	}
	
	//check logged in user if they  have permission in $title
	function check($title) {
		if(strtolower($title) == 'guest' && !isset($this->controller->userData['Permission'])) // 'guest' permission returns true if not logged in
			return true;
	
		if(!isset($this->controller->userData['Permission'])) //see if the user is logged in
			return false;
			
		$permissions = $this->controller->userData['Permission'];
		foreach($permissions as $permission) {
			if(strtolower($permission['title']) == strtolower($title))
				return true;
		}		
		return false;
	}
	
	//same as check but sets flash and redirects instead of just returning true or false
	function lock($title, $url = null) {
		if($this->check($title))
			return true;
		
		$this->controller->Session->setFlash('You are not authorized to do that.', 'default', array('class'=>'error-message'));		
		if($url == null)
			$url = $this->failURL;
		$this->controller->redirect($url);
	}
}
?>