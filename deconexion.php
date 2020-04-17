<?php

if(isset($_POST['submit1']))
{
	session_start();
	$_SESSION = array();
	session_destroy();
	header("Location: Accueilr.php");
}

?>