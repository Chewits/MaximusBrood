<?php
class MenuComponent extends Object {
	var $controller;
	
	//called before Controller::beforeFilter()
	function initialize(&$controller, $settings = array()) {
		// saving the controller reference for later use
		$this->controller =& $controller;
	}
	
	function addChild($title, $target, $admin = false) {
		
		$url = '';		
		if(is_array($target)) {
			foreach($target as $item) {
				$url .= '/'.$item;
			}
		} else {
			$url = $target;
		}
		
		$newItem = array(
		'Link'=>array(
			'title'=>$title,
			'url'=> $url,
			'admin'=>$admin
		),
		'Permission'=>array());
		
		$arraySize = count($this->controller->extraMenuData);
		$this->controller->extraMenuData[$arraySize] = $newItem;
		$this->controller->set('extraMenuData', $this->controller->extraMenuData);
	}
}
?>