<?php
class AutomaterComponent extends Object {
	var $controller;
	
	//TODO: all this
	
	
	//called before Controller::beforeFilter()
	function initialize(&$controller, $settings = array()) {
		// saving the controller reference for later use
		$this->controller =& $controller;
	}
}
?>