<?php

define('HOST','localhost');
define('DB_NAME','Centre_de_loisir');
define('USER','root');
define('PASS','');

try
{
	$connexion = new PDO("mysql:host=" . HOST . ";dbname=" . DB_NAME, USER, PASS);
	$connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}	catch(PDOException $e){
		echo $e;
}

?>