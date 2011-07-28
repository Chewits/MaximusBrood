<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Permissions Test cases generated on: 2010-12-28 02:12:49 : 1293502129*/
App::import('Controller', 'Permissions');

class TestPermissionsController extends PermissionsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class PermissionsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.permission', 'app.user', 'app.rank', 'app.article', 'app.link', 'app.category', 'app.log', 'app.post', 'app.board', 'app.group', 'app.groups_user', 'app.permissions_user');

	function startTest() {
		$this->Permissions =& new TestPermissionsController();
		$this->Permissions->constructClasses();
	}

	function endTest() {
		unset($this->Permissions);
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