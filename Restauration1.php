<?php

include 'include/connexion_bdd.php';
global $connexion;


if(isset($_POST['Submit']))
{ 
  $cantine = $_POST['Cantine'];
  $centre = $_POST['Centre'];



  $req1 = $connexion->prepare("SELECT * FROM Cantine WHERE Nom_cantine = ? ");
  $req2 = $connexion->prepare("SELECT * FROM Cantine WHERE Nom_du_centre = ? ");
  $req3 = $connexion->prepare("SELECT * FROM Cantine WHERE Nom_cantine = ? AND Nom_du_centre = ? ");


  $req1->execute(array($cantine));
  $req2->execute(array($centre));
  $req3->execute(array($cantine,$centre));


  if(!empty($cantine) && empty($centre))
  {

    while ($resultat = $req1->fetch()) 
    {
      echo $resultat['Nom_cantine'] . $resultat['Nom_du_centre'] . $resultat['Capacite_place'] . $resultat['Lieu'] . $resultat['Cout_vacance'] . "<br />";
    }
  }

   elseif(empty($cantine) && !empty($centre))
  {

    while ($resultat = $req2->fetch()) 
    {
      echo $resultat['Nom_cantine'] . $resultat['Nom_du_centre'] . $resultat['Capacite_place'] . $resultat['Lieu'] . $resultat['Cout_vacance'] . "<br />";
    }
  }

   elseif(!empty($cantine) && !empty($centre))
  {

    while ($resultat = $req3->fetch()) 
    {
      echo $resultat['Nom_cantine'] . $resultat['Nom_du_centre'] . $resultat['Capacite_place'] . $resultat['Lieu'] . $resultat['Cout_vacance'] . "<br />";
    }
  }
  
}

?>