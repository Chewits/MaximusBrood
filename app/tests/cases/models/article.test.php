<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'UTC' for 'GMT/0.0/no DST' instead in /Users/finngrimwood/Sites/MB/cake/console/templates/default/classes/test.ctp on line 22
/* Article Test cases generated on: 2010-12-28 00:12:57 : 1293497937*/
App::import('Model', 'Article');

class ArticleTestCase extends CakeTestCase {
	var $fixtures = array('app.article', 'app.link', 'app.permission', 'app.user', 'app.rank', 'app.log', 'app.post', 'app.board', 'app.group', 'app.groups_user', 'app.permissions_user', 'app.category');

	function startTest() {
		$this->Article =& ClassRegistry::init('Article');
	}

	function endTest() {
		unset($this->Article);
		ClassRegistry::flush();
	}

}
?>