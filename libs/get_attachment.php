<?php

require "../config.php";

	$data = array('oid' => $_POST['oid']);
	// die(var_dump($data));
	DataHandler::sendAndFetchData('https://secure.bitway.com/sp/dispAttach.php', $data);

?>