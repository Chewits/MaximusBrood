<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Profiles Test cases generated on: 2011-05-18 12:05:54 : 1305721434*/
App::import('Controller', 'Profiles');

class TestProfilesController extends ProfilesController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class ProfilesControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.profile', 'app.user', 'app.rank', 'app.group', 'app.groups_user', 'app.permission', 'app.permissions_user');

	function startTest() {
		$this->Profiles =& new TestProfilesController();
		$this->Profiles->constructClasses();
	}

	function endTest() {
		unset($this->Profiles);
		ClassRegistry::flush();
	}

	function testIndex() {

	}

	function testView() {

	}

	function testAdd() {

	}

	function testEdit() {

	}

	function testDelete() {

	}

}
?>