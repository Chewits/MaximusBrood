<?php

class PermissionsHelper extends AppHelper {
	
	var $helpers = array('Html');
	
	//used to check if $user has the permission called $title
	function check($title, $user) {	
		if(strtolower($title) == 'guest' && !isset($user['Permission']))
			return true;
		
		//check if user is logged in
		if(!isset($user['Permission']))
			return false;
	
		$permissions = $user['Permission'];
		
		foreach($permissions as $permission) {
			if(strtolower($permission['title']) == strtolower($title))
				return true;
		}
		
		return false;
	}
	
	//create a link from the permission (useful for admin options)
	function checkLink($title, $user, $link) {
		if($this->check($title, $user)) {
			$options = array('class'=>'admin');
			
			//if this is a delete option we need to add a confirm box			
			if($link['action'] == 'delete')
				$options['onclick'] = 'return confirm(\'Are you sure you want to delete this?\');';			
			
			//return link
			return $this->Html->link($title, $link, $options);
		}
		
		//permission not granted, return nothing
		return;
	}
	
	//takes an array of the format array(permission to be checked => array(text of link => url of link (in array format)))
	//returns a list of links of the format [before]Link[seperator]Link[seperator]Link[after]
	function linkList($permissions, $user, $params = null) {
		if($params == null) $params = array('before'=>null, 'seperator'=>' | ', 'after'=>null); //set params if not set by user
		
		$links = $params['before']; //store the html to return in here
		foreach($permissions as $permission=>$linkData) {
			if($this->check($permission, $user)) {
				foreach($linkData as $linkText=>$target) {
					$options = array('class'=>'admin');
			
					//if this is a delete option we need to add a confirm box			
					if($target['action'] == 'delete')
						$options['onclick'] = 'return confirm(\'Are you sure you want to delete this?\');';			
			
					// link
					$links .= $this->Html->link($linkText, $target, $options).$params['seperator'];
				}					
			}
		}
		
		$links = substr($links, 0, strlen($links) - strlen($params['seperator'])); //remove seperator from end
		return $links.$params['after'];
	}
}

?>