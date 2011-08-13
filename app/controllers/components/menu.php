<?php
class MenuComponent extends Object {
	var $controller;
	var $Link;
	var $name;
	var $alias = null;
	
	//called before Controller::beforeFilter()
	function initialize(&$controller, $settings = array()) {
		// saving the controller reference for later use
		$this->controller =& $controller;
		$this->Link = ClassRegistry::init('Link');

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
	
	function setAlias($alias_to_set) {
		$this->alias = $alias_to_set;
		//refetch sub menu with new alias
		$this->getSubMenu();
	}
	
	function getMainMenu() {
		$root_menu = $this->Link->find('all', array('conditions'=>array('Link.link_id'=>'0'), 'order'=>array('order'=>'DESC')));
		
		$this->controller->set('root_menu', $root_menu);
	}
	
	function getSubMenu() {
		//first we need to find the correct sub menu item
		//look for a match with the alias first, then fall back to the controller name
		$sub_menu = '';
		$parent_item = '';
		if(!is_null($this->alias)) {
			echo $this->alias;
			//have we selected a specific menu based on the alias?			
			$parent_item = $this->Link->find('first', array('conditions'=>array('Link.link_id'=>'0', 'Link.alias'=>$this->alias), 'order'=>array('order'=>'DESC')));
			$sub_menu = $this->Link->find('all', array('conditions'=>array('Link.link_id'=>'0', 'Link.link_id'=>$parent_item['Link']['id']), 'order'=>array('order'=>'DESC')));
		} else {
			//an alias is not set. lets try to find a sub menu based on the controller name.
			$parent_item = $this->Link->find('first', array('conditions'=>array('Link.link_id'=>'0', 'Link.controller'=>$this->controller->name), 'order'=>array('order'=>'DESC')));
			$sub_menu = $this->Link->find('all', array('conditions'=>array('Link.link_id'=>$parent_item['Link']['id']), 'order'=>array('order'=>'DESC')));
		}

		$this->controller->set('main_menu_id', $parent_item['Link']['id']);
		$this->controller->set('sub_menu', $sub_menu);
	}
}
?>