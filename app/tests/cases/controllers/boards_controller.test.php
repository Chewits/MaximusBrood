<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Boards Test cases generated on: 2010-12-28 00:12:08 : 1293495488*/
App::import('Controller', 'Boards');

class TestBoardsController extends BoardsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class BoardsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.board', 'app.post', 'app.user', 'app.rank', 'app.group', 'app.article', 'app.link', 'app.log', 'app.permission', 'app.permissions_user');

	function startTest() {
		$this->Boards =& new TestBoardsController();
		$this->Boards->constructClasses();
	}

	function endTest() {
		unset($this->Boards);
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