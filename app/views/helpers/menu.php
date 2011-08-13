<? 
 
class MenuHelper extends Helper {
	var $helpers = array('Html');

	function getMenuMarkup($root_menu, $sub_menu, $main_menu_id, $user_data) {
		$menu_markup = '<ul>';
		
		foreach($root_menu as $menu_item) {
			//firstly check permissions
			if($this->check_permissions($menu_item, $user_data)) {
				$menu_markup .= '<li>'.$this->build_link($menu_item).'</li>';
				
				//check to see if this menu item has the sub-menu attached
				if($main_menu_id == $menu_item['Link']['id']) {
					//it does, so we need to draw the sub menu
					foreach($sub_menu as $sub_menu_item) {
						if($this->check_permissions($sub_menu_item, $user_data)) {
							$menu_markup .= '<ul>';
							$menu_markup .= '<li>'.$this->build_link($sub_menu_item).'</li>';	
							$menu_markup .= '</ul>';
						}
					}				
				}
			}
		}
		$menu_markup .= '</ul>';
		
		return $menu_markup;
	}
	
	function build_link($link_data) {
		//first look to see if this is an admin link
		$css_class = '';
		if(isset($link_data['Link']['permission_id']) && $link_data['Link']['permission_id'] != 0) 
			$css_class = 'admin';
			
		//then build the URL we want
		$url = '';
		if(isset($link_data['Link']['controller']) && !empty($link_data['Link']['controller'])) {
			$url = array('controller'=>$link_data['Link']['controller'], 'action'=>$link_data['Link']['action']);
		} else {
			$url = $link_data['Link']['url'];
		}
		
		return $this->Html->link($link_data['Link']['title'], $url, array('class'=>$css_class));
	}
	
	function check_permissions($link_data, $user_data) {
		$user_permissions = $user_data['Permission'];
		
		if(isset($link_data['Link']['permission_id']) && $link_data['Link']['permission_id'] != '0') {	
			foreach($user_permissions as $permission) {
				if($permission['id'] == $link_data['Link']['permission_id']) {
					return true;
				}
			}
			
			return false;
		} else {
			return true;
		}
		
		return false;
	}
}
  
?>