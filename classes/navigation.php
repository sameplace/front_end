<?php

class Navigation
{

//function looks for get variable 'page', and includes needed page according to page
public static function Nav()
{

	$pages = array( 
		1 => 'home.tpl',
	 	2 => 'technology.tpl', 
	 	3 => 'company.tpl', 
	 	4 => 'news.tpl', 
	 	5 => 'contact.tpl', 
	 	6 => 'service.tpl',
	 	7 => 'register.tpl');

	if(isset($_GET['page'])){
		$page = $_GET['page'];

		if(array_key_exists($page, $pages))
			include "templates/".$pages[$page];
		else 
			header("Location: index.php");
	}
	else include "templates/home.tpl";
}

//function checks if variable page is numeric
public static function Secure()
{
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