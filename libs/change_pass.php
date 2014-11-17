<?php

require "../config.php";

	$data = array('oid' => $_POST['oid'], 'op' => $_POST['old_pass'], 'np' => $_POST['new_pass']);
	DataHandler::sendAndFetchData('https://secure.bitway.com/sp/a851.php', $data);

?>