<?php

class LoggableBehavior extends ModelBehavior {
	var $name = 'Loggable';

	function beforeSave(&$model) {	
		if(!isset($model->userData['User']['id']))
			$model->userData['User']['id'] = 0;
		
		//build the log entry
		$log = array(
			'title'			=>		$model->name,
			'description'	=>		array_key_exists('id', $model->data[$model->name]) ? 'Edit' : 'Add',
			'timestamp'		=>		DboSource::expression('NOW()'),
			'ip_address'	=>		$model->userData['User']['ip_address'],
			'user_agent'	=>		$model->userData['User']['user_agent'],
			'user_id'		=>		$model->userData['User']['id']);
		$data['Log'] = $log;
		
		
		//i don't think this is strictly right, but it works.
		$this->Log =& ClassRegistry::init('Log');
		if($this->Log->save($data))
			return true;
		
		return false;
	}
	
	function beforeDelete(&$model) {
		if(!isset($model->userData['User']['id']))
			$model->userData['User']['id'] = 0;
		
		//build the log entry
		$log = array(
			'title'			=>		$model->name,
			'description'	=>		'Delete',
			'timestamp'		=>		DboSource::expression('NOW()'),
			'ip_address'	=>		$model->userData['User']['ip_address'],
			'user_agent'	=>		$model->userData['User']['user_agent'],
			'user_id'		=>		$model->userData['User']['id']);
		$data['Log'] = $log;		
		
		//i don't think this is strictly right, but it works.
		$this->Log =& ClassRegistry::init('Log');
		$this->Log->save($data); //save the log entry
		
		return true;
	}
	
	function manualLog(&$model, $title, $description, $additional = '', $additional_id = 0) {
		//build the log entry
		$log = array(
			'title'			=>		$title,
			'description'	=>		$description,
			'timestamp'		=>		DboSource::expression('NOW()'),
			'ip_address'	=>		$model->userData['User']['ip_address'],
			'user_agent'	=>		$model->userData['User']['user_agent'],
			'user_id'		=>		$model->userData['User']['id'],
			'additional'	=>		$additional,
			'additional_id'		=>		$additional_id);
		$data['Log'] = $log;
		
		
		//i don't think this is strictly right, but it works.
		$this->Log =& ClassRegistry::init('Log');
		if($this->Log->save($data))
			return true;
			
		return false;
	}
}

?>