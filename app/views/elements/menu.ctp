<?
$menu = '<ul>';
foreach($menuData as $menuItem) {
	if($menuItem['Link']['permission_id'] != 0) { //if this is true, we need to check some permissions before allowing this
		if($permissions->check($menuItem['Permission']['title'], $userData)) { //so lets check the permission
			$menu .= '<li>'.$html->link($menuItem['Link']['title'], makeUrl($menuItem), array('class'=>'admin')).'</li>';
		}
	} else { //if we're here then this link does not require permissions
		$menu .= '<li>'.$html->link($menuItem['Link']['title'], makeUrl($menuItem)).'</li>';
	}
	
	//now draw children
	if(strtolower($menuItem['Link']['controller']) == strtolower($this->params['controller']) && isset($childMenuData)) {
		if($menuItem['Link']['id'] == $childMenuData[0]['Link']['link_id'])
		{		
			$menu .= '<ul>';
			foreach($childMenuData as $childMenuItem) {
				if($childMenuItem['Link']['permission_id'] != 0) { //child menu item requires permission
					if($permissions->check($childMenuItem['Permission']['title'], $userData)) {
						$menu .= '<li>'.$html->link($childMenuItem['Link']['title'], makeURL($childMenuItem), array('class'=>'admin')).'</li>';
					}
				} else { //no permission needed
					$menu .= '<li>'.$html->link($childMenuItem['Link']['title'], makeURL($childMenuItem)).'</li>';
				}
			}
			//render any additional items from the controller
			foreach($extraMenuData as $childMenuItem) {
				if(!$childMenuItem['Link']['admin'])
					$menu .= '<li>'.$html->link($childMenuItem['Link']['title'], $childMenuItem['Link']['url']).'</li>';
				else
					$menu .= '<li>'.$html->link($childMenuItem['Link']['title'], $childMenuItem['Link']['url'], array('class'=>'admin')).'</li>';
			}
			$menu .= '</ul>';
		}
	}
	
	
	
}

//display login/logout link
if(!$permissions->check('Allow Login', $userData)) { //this is true if we are logged in
	$menu .= '<li>'.$html->link('Login', array('controller'=>'members', 'action'=>'login'), array('class'=>'admin')).'</li>';
} else {
	$menu .= '<li>'.$html->link('Logout', array('controller'=>'members', 'action'=>'logout'), array('class'=>'admin')).'</li>';
}

$menu .= '</ul>';

//output the stuff we've generated
echo '<h2>Navigation</h2>';
echo $menu;



//a function for making a url from the link data
function makeUrl($linkData) {
	return empty($linkData['url']) ? array('controller'=>$linkData['Link']['controller'], 'action'=>$linkData['Link']['action']) : $linkData['Link']['url'];
}


?>