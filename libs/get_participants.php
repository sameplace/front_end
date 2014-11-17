<?php

require "../config.php";
	
	$data = array('oid' => $_POST['oid'], 'p' => $_POST['participants']);
	DataHandler::sendAndFetchData('https://secure.bitway.com/sp/a274.php', $data);

?>