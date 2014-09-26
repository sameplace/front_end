<?php

	$email 	= $_POST['email'];
	$pass 	= $_POST['pass'];
	$data = array('email' => $email, 'pass' => $pass );

	function fetch( $url, $data) {
        $ch =  curl_init();

        $useragent = isset($z['useragent']) ? $z['useragent'] : 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:10.0.2) Gecko/20100101 Firefox/10.0.2';

        curl_setopt( $ch, CURLOPT_URL, $url );
        curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true );
        curl_setopt( $ch, CURLOPT_HEADER, true );
        curl_setopt( $ch, CURLOPT_AUTOREFERER, true );
        curl_setopt( $ch, CURLOPT_FOLLOWLOCATION, true );
        curl_setopt( $ch, CURLOPT_POST, true );

        curl_setopt( $ch, CURLOPT_POSTFIELDS, $data );

        curl_setopt( $ch, CURLOPT_USERAGENT, $useragent );

        $result = curl_exec( $ch );
        curl_close( $ch );
        return $result;
    }

    $a = fetch('https://secure.bitway.com/sp/a428.php', $data);
    die(var_dump($a));
	
?>