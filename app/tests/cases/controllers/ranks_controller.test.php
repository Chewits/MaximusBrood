<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Ranks Test cases generated on: 2010-12-25 02:12:50 : 1293242570*/
App::import('Controller', 'Ranks');

class TestRanksController extends RanksController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class RanksControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.rank', 'app.user');

	function startTest() {
		$this->Ranks =& new TestRanksController();
		$this->Ranks->constructClasses();
	}

	function endTest() {
		unset($this->Ranks);
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