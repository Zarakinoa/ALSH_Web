<?php

include 'include/connexion_bdd.php';
global $connexion;

$req1 = $connexion->query("SELECT * FROM Budget WHERE Nom_du_centre = 'ALSH Croix Tienac' ");
$req2 = $connexion->query("SELECT * FROM Budget WHERE Nom_du_centre = 'ALSH Godeau' ");
$req3 = $connexion->query("SELECT * FROM Budget WHERE Nom_du_centre = 'ALSH Murget' ");


if(isset($_POST['submit']))
{	
  $type = $_POST['Type'];
  $centre = $_POST['Centre'];
  
	if($type == 'Alimentation')
	while($resultat = $req->fetch())
	{

		 echo $resultat['Nom_du_centre'] . $resultat['Nom'] . "<br />";		
	}
	elseif ($type == 'Materiel') {
		while($resultat = $req->fetch())
	{

		 echo $resultat['Nom_du_centre'] . $resultat['Nom'] . "<br />";		
	}
		
	}
	elseif ($type == 'Transport') {
		while($resultat = $req->fetch())
	{

		 echo $resultat['Nom_du_centre'] . $resultat['Nom'] . "<br />";		
	}
	
	}
}

?>