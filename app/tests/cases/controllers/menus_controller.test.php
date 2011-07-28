<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Menus Test cases generated on: 2010-12-28 00:12:39 : 1293494499*/
App::import('Controller', 'Menus');

class TestMenusController extends MenusController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class MenusControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.menu', 'app.article', 'app.user', 'app.rank', 'app.group', 'app.log', 'app.post', 'app.board', 'app.permission', 'app.permissions_user');

	function startTest() {
		$this->Menus =& new TestMenusController();
		$this->Menus->constructClasses();
	}

	function endTest() {
		unset($this->Menus);
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