<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Profile Test cases generated on: 2010-12-28 17:12:19 : 1293557959*/
App::import('Model', 'Profile');

class ProfileTestCase extends CakeTestCase {
	var $fixtures = array('app.profile', 'app.user', 'app.rank', 'app.article', 'app.link', 'app.permission', 'app.permissions_user', 'app.category', 'app.log', 'app.post', 'app.board', 'app.group', 'app.groups_user');

	function startTest() {
		$this->Profile =& ClassRegistry::init('Profile');
	}

	function endTest() {
		unset($this->Profile);
		ClassRegistry::flush();
	}

}
?>