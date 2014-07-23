<?php
class DbBroker
{
	
	public static $conn;

	public static function Open($server="localhost",$user="root",$pass="",$db="sameplace")
	{
		 $dbh = new PDO('mysql:host=localhost;dbname='.$db, $user, $pass);
	}
	
	public function Execute($q)
	{
		$count = $dbh->exec($q);
		return $count;
	}
	
	public static function GetString($q)
	{
		$r = mysql_query($q);
		$rw = mysql_fetch_row($r);
		return $rw[0];
	}
	
	public static function GetArr($q)
	{
		$r = mysql_query($q);
		$res = array();
		while($rw=mysql_fetch_row($r))
		$res[] = $rw;
		return $res;
	}
	
	public static function Close()
	{
		mysql_close(self::$conn);
	}
}
?>