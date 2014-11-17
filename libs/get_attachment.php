<?php

require "../config.php";

	$data = array('oid' => $_POST['oid']);
	DataHandler::sendAndFetchData('https://secure.bitway.com/sp/dispAttach.php', $data);

?>