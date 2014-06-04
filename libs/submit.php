<?php

	$postdata = file_get_contents("php://input");
	$request = json_decode($postdata);
	
	$check = (array)$request;
	if(!empty($check))
		echo $postdata;
	else 
		echo "empty";
?>