<?php

class AppError extends ErrorHandler {
	function message($params) {
		pr($params['message']);
		die;
	}
}

?>