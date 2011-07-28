<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Permission Test cases generated on: 2010-12-27 22:12:57 : 1293488517*/
App::import('Model', 'Permission');

class PermissionTestCase extends CakeTestCase {
	var $fixtures = array('app.permission', 'app.user', 'app.rank', 'app.group', 'app.article', 'app.log', 'app.post', 'app.board', 'app.permissions_user');

	function startTest() {
		$this->Permission =& ClassRegistry::init('Permission');
	}

	function endTest() {
		unset($this->Permission);
		ClassRegistry::flush();
	}

}
?>