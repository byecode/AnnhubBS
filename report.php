<?php 
	include 'modules/class/data.php';
	include 'modules/class/authenticate.php';
	
	if(check_cookie() == 0) {
		session_start();	
	} else {
		$code = check_cookie();
		header("Location: modules/class/error.php?code=$code");
	}

?>

