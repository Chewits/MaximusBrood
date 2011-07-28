<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Logs Test cases generated on: 2010-12-27 19:12:46 : 1293478786*/
App::import('Controller', 'Logs');

class TestLogsController extends LogsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class LogsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.log', 'app.user', 'app.rank', 'app.group', 'app.article', 'app.post', 'app.board');

	function startTest() {
		$this->Logs =& new TestLogsController();
		$this->Logs->constructClasses();
	}

	function endTest() {
		unset($this->Logs);
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