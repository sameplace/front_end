<?php
	
	$postdata 	= file_get_contents("php://input");
	$request 	= json_decode($postdata);

	$email 		= $request->email;
	$password 	= $request->password;

	die(var_dump($email));
	
	$check = (array)$request;
	if(!empty($check))
		echo $postdata;
	else 
		echo "empty";
?>