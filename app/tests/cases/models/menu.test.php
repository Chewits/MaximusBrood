<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Menu Test cases generated on: 2010-12-28 00:12:38 : 1293494498*/
App::import('Model', 'Menu');

class MenuTestCase extends CakeTestCase {
	var $fixtures = array('app.menu', 'app.article', 'app.user', 'app.rank', 'app.group', 'app.log', 'app.post', 'app.board', 'app.permission', 'app.permissions_user');

	function startTest() {
		$this->Menu =& ClassRegistry::init('Menu');
	}

	function endTest() {
		unset($this->Menu);
		ClassRegistry::flush();
	}

}
?>