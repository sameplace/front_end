<?php

require "../config.php";

	$data = array('oid' => $_POST['oid'], 'n' => $_POST['rename']);
	DataHandler::sendAndFetchData('https://secure.bitway.com/sp/a923.php', $data);

?>