<?php
session_start();
define("_APP_PATH", dirname(__FILE__));
define("_CLASSES", _APP_PATH."/classes/");

function __autoload($classname)
{
	require_once(_CLASSES.$classname.".php");
}
?>