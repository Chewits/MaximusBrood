<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Groups Test cases generated on: 2010-12-28 00:12:46 : 1293496966*/
App::import('Controller', 'Groups');

class TestGroupsController extends GroupsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class GroupsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.group', 'app.user', 'app.rank', 'app.article', 'app.link', 'app.permission', 'app.permissions_user', 'app.log', 'app.post', 'app.board', 'app.groups_user');

	function startTest() {
		$this->Groups =& new TestGroupsController();
		$this->Groups->constructClasses();
	}

	function endTest() {
		unset($this->Groups);
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