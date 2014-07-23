<?php

	require "../config.php";

	$db = "sameplace";
	$server="localhost";
	$user="root";
	$pass="";

	$dbh = new PDO('mysql:host=localhost;dbname='.$db, $user, $pass);
	$postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$dbh->exec('INSERT INTO `email_subscribers` (email) VALUES ("'.$request->email.'")');
	
	$check = (array)$request;
	if(!empty($check))
		echo $postdata;
	else 
		echo "empty";
?>