<?php
class ScraperComponent extends Object {
	var $controller;
	var $failURL = '/';
	var $enabled;
	
	//called before Controller::beforeFilter()
	function initialize(&$controller, $settings = array()) {
		// saving the controller reference for later use
		$this->controller =& $controller;
	}
	
	
}
?>