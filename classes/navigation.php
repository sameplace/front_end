<?php

class Navigation
{

//function looks for get variable 'page', and includes needed page according to page
public static function Nav(){

	$pages = array( 
		1 => 'home.tpl',
	 	2 => 'dealspaces.tpl', 
	 	3 => 'user.tpl', 
	 	4 => 'single_dealspace.tpl', 
	 	5 => 'mime.tpl', 
	 	6 => 'service.tpl',
	 	7 => 'register.tpl');

	if(isset($_GET['page'])){
		
		$page = $_GET['page'];
		if($page!=1){
			if(isset($_COOKIE['PHPSESSID']) && isset($_SESSION['logged']) && $_SESSION['logged']==1 && array_key_exists($page, $pages)){
				include "templates/".$pages[$page];
			} else {
				// include "templates/pls_login.tpl";
				include "templates/pls_login.tpl";
			}
		}
	}
	else include "templates/home.tpl";
}

//function checks if variable page is numeric
public static function Secure(){
	if(isset($_GET['page'])){
		$page = $_GET['page'];
		if(!is_numeric($page) && $page!=null)
		{
			header("Location: index.php");
		}
	}
}

}
?>