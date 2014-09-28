<?php
require "../config.php";

	if(isset($_POST['email']) && isset($_POST['pass'])){
		$email 	= $_POST['email'];
	  	$pass 	= $_POST['pass'];
	  	$data = array('email' => $email, 'pass' => $pass );
	}
	else die(); //TO DO

	DataHandler::Login('https://secure.bitway.com/sp/a428.php', $data);

?>