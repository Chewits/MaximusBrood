<?php

class OrderableBehavior extends ModelBehavior {
	var $name = 'Orderable';
	var $fieldName = 'order';

	function setup(&$model, $settings) {
        //make sure table has correct schema
        if(!array_key_exists($this->fieldName, $model->_schema))
        	$this->cakeError('message', array('message'=>'The field "'.$model->name.'.'.$this->fieldName.'" could not be found.'));
    }
    
    function afterSave(&$model) {    	
    	if(!array_key_exists('id', $model->data[$model->name]))
    		$model->saveField($this->fieldName, $model->id);
    }

	function moveUp(&$model, $id, $conditions = array()) {
		$table = $model->tablePrefix.$model->useTable; //build the table name eg. mb_links
		$topRecord = $model->find('first', array('order'=>array($model->name.'.'.$this->fieldName=>'DESC'), 'conditions'=>$conditions));
		$thisRecord = $model->read(null, $id);
	
		//find the order number of the record to be moved up
		$orderNumber = $thisRecord[$model->name][$this->fieldName];
		
		$nextOrderNumber = $orderNumber;
		$nextRecord = false;
		while(!$nextRecord) {				
			$nextOrderNumber ++;
			if($nextOrderNumber > $topRecord[$model->name][$this->fieldName])
				return false;
			$nextRecord = $model->find('first', array('conditions'=>array_merge($conditions,array($model->name.'.'.$this->fieldName=>$nextOrderNumber))));
		}
		
		$model->query('Update `'.$table.'` set `'.$this->fieldName.'`='.$orderNumber.' where `id`='.$nextRecord[$model->name]['id'].'');
		$model->query('Update `'.$table.'` set `'.$this->fieldName.'`='.$nextOrderNumber.' where `id`='.$thisRecord[$model->name]['id'].'');
		
		//log this action if needed, a bit rough and ready!
		foreach($model->actsAs as $behaviour) {
			if($behaviour == 'Loggable') {
				$model->manualLog($model->name, 'Move up');
				break;
			}
		}
		
		return true;			
	}
	
	function moveDown(&$model, $id, $conditions = array()) {
		$table = $model->tablePrefix.$model->useTable; //build the table name eg. mb_links
		$bottomRecord = $model->find('first', array('order'=>array($model->name.'.'.$this->fieldName=>'ASC'), 'conditions'=>$conditions));
		$thisRecord = $model->read(null, $id);
		
		//find the order number of the record to be moved up
		$orderNumber = $thisRecord[$model->name][$this->fieldName];
		
		$nextOrderNumber = $orderNumber;
		$nextRecord = false;
		while(!$nextRecord) {				
			$nextOrderNumber --;			
			if($nextOrderNumber < $bottomRecord[$model->name][$this->fieldName]) 
				return false;
			$nextRecord = $model->find('first', array('conditions'=>array_merge($conditions,array($model->name.'.'.$this->fieldName=>$nextOrderNumber))));
		}
		
		$model->query('Update `'.$table.'` set `'.$this->fieldName.'`='.$orderNumber.' where `id`='.$nextRecord[$model->name]['id'].'');
		$model->query('Update `'.$table.'` set `'.$this->fieldName.'`='.$nextOrderNumber.' where `id`='.$thisRecord[$model->name]['id'].'');
		
		//log this action if needed, a bit rough and ready!
		foreach($model->actsAs as $behaviour) {
			if($behaviour == 'Loggable') {
				$model->manualLog($model->name, 'Move down');
				break;
			}
		}
		
		return true;
	}
}

?>