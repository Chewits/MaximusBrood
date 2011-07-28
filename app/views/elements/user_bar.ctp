<? 

if(isset($userData['User']['id'])) {
	//user is logged in
	echo 'Welcome back ';
	echo $html->link($userData['User']['username'], array('controller'=>'members', 'action'=>'view', $userData['User']['id']));
	echo ' | ';
	echo $html->image('icons/flags/'.$geolocation->countryToCode($userData['Profile']['country']).'.png');
	echo ' | ';
	echo $html->link('Overview', '', array('class'=>'admin'));
	echo ' | ';
	echo $html->link('Edit Profile', array('controller'=>'members', 'action'=>'edit', $userData['User']['id']), array('class'=>'admin'));
	echo ' | ';
	echo $html->link('Messages', '', array('class'=>'admin'));
	echo ' | ';
	echo $html->link('Log Out', array('controller'=>'members', 'action'=>'logout'), array('class'=>'admin'));
}
else {
	//user is not logged in
	echo $form->create('User', array('style'=>'position:relative; top:-3px;','url'=>array('controller'=>'members', 'action'=>'login')));
	
	echo $form->input('username', array('between'=>':', 'Default'=>'Username', 'div'=>false));
	echo $form->input('password', array('between'=>':', 'Default'=>'Password', 'div'=>false));
	echo '<button type="submit" style="visibility: hidden;"></button>';
	echo $form->end();
}

?>