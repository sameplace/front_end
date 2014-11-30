<?php

require "../config.php";

	$data = array('oid' => $_POST['oid'], 'n' => $_POST['name']);
	DataHandler::sendAndFetchData('https://secure.bitway.com/sp/a715.php', $data);

?>