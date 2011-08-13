<?

$menu = '<ul>';

foreach($root_menu as $menu_item) {
	$menu .= '<li>'.$html->link($menu_item['Link']['title'], array('controller'=>$menu_item['Link']['controller'], 'action'=>$menu_item['Link']['action']), null).'</li>';
	
	//check to see if this menu item has the sub-menu attached
	if($main_menu_id == $menu_item['Link']['id']) {
		//draw the sub menu
		$menu .= '<ul>';
		foreach($sub_menu as $menu_item) {
			$admin ='';
			if($menu_item['Link']['permission_id'] != '0')
				$admin = 'admin';
			$menu .= '<li>'.$html->link($menu_item['Link']['title'], array('controller'=>$menu_item['Link']['controller'], 'action'=>$menu_item['Link']['action']), array('class'=>$admin)).'</li>';
		}
		$menu .= '</ul>';
	}
}

//display login/logout link
if(!$permissions->check('Allow Login', $userData)) { //this is true if we are logged in
	$menu .= '<li>'.$html->link('Login', array('controller'=>'members', 'action'=>'login'), array('class'=>'admin')).'</li>';
} else {
	$menu .= '<li>'.$html->link('Logout', array('controller'=>'members', 'action'=>'logout'), array('class'=>'admin')).'</li>';
}

$menu .= '</ul>';

echo $menu;
?>