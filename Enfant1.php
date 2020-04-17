<?php

include 'include/connexion_bdd.php';
global $connexion;


if(isset($_POST['Submit']))
{ 
  $nom = $_POST['Nom'];
  $prenom = $_POST['Prenom'];
  $date   = $_POST['DN'];
  $vaccin = $_POST['Vaccin'];
  $assurance = $_POST['Assurance'];
  $centre = $_POST['Centre'];
  $groupe = $_POST['Groupe'];
  $penssionaire = $_POST['Penssionaire'];
  $regime = $_POST['Regime'];



  $req1 = $connexion->prepare("SELECT * FROM Enfant WHERE Nom = ? ");
  $req2 = $connexion->prepare("SELECT * FROM Enfant WHERE Prenom = ? ");
  $req3 = $connexion->prepare("SELECT * FROM Enfant WHERE Nom = ? AND Prenom = ?");
  $req4 = $connexion->prepare("SELECT * FROM Enfant WHERE Vaccin_a_jour = ?");
  $req5 = $connexion->prepare("SELECT * FROM Enfant WHERE Assurance_a_jour = ?");
  $req6 = $connexion->prepare("SELECT * FROM Enfant WHERE Vaccin_a_jour = ? AND Assurance_a_jour = ?");
  $req7 = $connexion->prepare("SELECT * FROM Enfant WHERE Vaccin_a_jour = ? AND Assurance_a_jour = ? AND Nom_du_centre = ?");
  $req8 = $connexion->prepare("SELECT * FROM Enfant WHERE Vaccin_a_jour = ? AND Assurance_a_jour = ? AND Nom_du_centre = ? AND Groupe = ?");
  $req9 = $connexion->prepare("SELECT * FROM Enfant WHERE Vaccin_a_jour = ? AND Assurance_a_jour = ? AND Nom_du_centre = ? AND Groupe = ? AND Restauration = ?");
  $req10 = $connexion->prepare("SELECT * FROM Enfant WHERE Vaccin_a_jour = ? AND Assurance_a_jour = ? AND Nom_du_centre = ? AND Groupe = ? AND Restauration = ? AND Regime_alimentaire = ?");
  $req11 = $connexion->prepare("SELECT * FROM Enfant WHERE Vaccin_a_jour = ? AND Assurance_a_jour = ? AND Nom_du_centre = ? AND Restauration = ?");
  $req12 = $connexion->prepare("SELECT * FROM Enfant WHERE Vaccin_a_jour = ? AND Assurance_a_jour = ? AND Nom_du_centre = ? AND Restauration = ? AND Regime_alimentaire = ?");
  $req13 = $connexion->prepare("SELECT * FROM Enfant WHERE Vaccin_a_jour = ? AND Assurance_a_jour = ? AND Nom_du_centre = ? AND Regime_alimentaire = ?");
  $req14 = $connexion->prepare("SELECT * FROM Enfant WHERE Groupe = ?");
  $req15 = $connexion->prepare("SELECT * FROM Enfant WHERE Groupe = ? AND Regime_alimentaire = ?");
  $req16 = $connexion->prepare("SELECT * FROM Enfant WHERE Groupe = ? AND Restauration = ? AND Regime_alimentaire = ?");
  $req17 = $connexion->prepare("SELECT * FROM Enfant WHERE Nom = ? AND Prenom = ? AND Date_naissance = ? AND Vaccin_a_jour = ? AND Assurance_a_jour = ? AND Nom_du_centre = ? AND Groupe = ? AND Restauration = ?");
  $req18 = $connexion->prepare("SELECT * FROM Enfant WHERE Nom = ? AND Prenom = ? AND Date_naissance = ? AND Vaccin_a_jour = ? AND Assurance_a_jour = ? AND Nom_du_centre = ? AND Groupe = ? AND Restauration = ? AND Regime_alimentaire = ?");
  $req19 = $connexion->prepare("SELECT * FROM Enfant WHERE Nom_du_centre = ? ");
  $req20 = $connexion->prepare("SELECT * FROM Enfant WHERE Nom_du_centre = ? AND Groupe = ? ");
  $req21 = $connexion->prepare("SELECT * FROM Enfant WHERE Regime_alimentaire = ? ");
  $req22 = $connexion->prepare("SELECT * FROM Enfant WHERE Restauration = ? ");
  $req23 = $connexion->prepare("SELECT * FROM Enfant WHERE Nom_du_centre = ? AND Regime_alimentaire = ?");



  $req1->execute(array($nom));
  $req2->execute(array($prenom));
  $req3->execute(array($nom,$prenom));
  $req4->execute(array($vaccin));
  $req5->execute(array($assurance));
  $req6->execute(array($vaccin,$assurance));
  $req7->execute(array($vaccin,$assurance,$centre));
  $req8->execute(array($vaccin,$assurance,$centre,$groupe));
  $req9->execute(array($vaccin,$assurance,$centre,$groupe,$penssionaire));
  $req10->execute(array($vaccin,$assurance,$centre,$groupe,$penssionaire,$regime));
  $req11->execute(array($vaccin,$assurance,$centre,$penssionaire));
  $req12->execute(array($vaccin,$assurance,$centre,$penssionaire,$regime));
  $req13->execute(array($vaccin,$assurance,$centre,$regime));
  $req14->execute(array($groupe));
  $req15->execute(array($groupe,$regime));
  $req16->execute(array($groupe,$penssionaire,$regime));
  $req17->execute(array($nom,$prenom,$date,$vaccin,$assurance,$centre,$groupe,$penssionaire));
  $req18->execute(array($nom,$prenom,$date,$vaccin,$assurance,$centre,$groupe,$penssionaire,$regime));
  $req19->execute(array($centre));
  $req20->execute(array($centre,$groupe));
  $req21->execute(array($regime));
  $req22->execute(array($penssionaire));
  $req23->execute(array($centre,$regime));



  if(!empty($nom) && empty($prenom) && empty($date) && empty($vaccin) && empty($assurance) && empty($centre) && empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req1->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }


  elseif(empty($nom) && empty(!$prenom) && empty($date) && empty($vaccin) && empty($assurance) && empty($centre) && empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req2->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

   elseif(!empty($nom) && empty(!$prenom) && empty($date) && empty($vaccin) && empty($assurance) && empty($centre) && empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req3->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

    elseif(empty($nom) && empty($prenom) && empty($date) && !empty($vaccin) && empty($assurance) && empty($centre) && empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req4->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

   elseif(empty($nom) && empty($prenom) && empty($date) && empty($vaccin) && !empty($assurance) && empty($centre) && empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req5->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

  elseif(empty($nom) && empty($prenom) && empty($date) && !empty($vaccin) && !empty($assurance) && empty($centre) && empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req6->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

  elseif(empty($nom) && empty($prenom) && empty($date) && !empty($vaccin) && !empty($assurance) && !empty($centre) && empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req7->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

  elseif(empty($nom) && empty($prenom) && empty($date) && !empty($vaccin) && !empty($assurance) && !empty($centre) && !empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req8->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

   elseif(empty($nom) && empty($prenom) && empty($date) && !empty($vaccin) && !empty($assurance) && !empty($centre) && !empty($groupe) && !empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req9->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

     elseif(empty($nom) && empty($prenom) && empty($date) && !empty($vaccin) && !empty($assurance) && !empty($centre) && !empty($groupe) && !empty($penssionaire) && !empty($regime))
  {

    while ($resultat = $req10->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

    elseif(empty($nom) && empty($prenom) && empty($date) && !empty($vaccin) && !empty($assurance) && !empty($centre) && empty($groupe) && !empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req11->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

    elseif(empty($nom) && empty($prenom) && empty($date) && !empty($vaccin) && !empty($assurance) && !empty($centre) && empty($groupe) && !empty($penssionaire) && !empty($regime))
  {

    while ($resultat = $req12->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

   elseif(empty($nom) && empty($prenom) && empty($date) && !empty($vaccin) && !empty($assurance) && !empty($centre) && empty($groupe) && empty($penssionaire) && !empty($regime))
  {

    while ($resultat = $req13->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }


   elseif(empty($nom) && empty($prenom) && empty($date) && empty($vaccin) && empty($assurance) && empty($centre) && !empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req14->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

   elseif(empty($nom) && empty($prenom) && empty($date) && empty($vaccin) && empty($assurance) && empty($centre) && !empty($groupe) && !empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req15->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

   elseif(empty($nom) && empty($prenom) && empty($date) && empty($vaccin) && empty($assurance) && empty($centre) && !empty($groupe) && !empty($penssionaire) && !empty($regime))
  {

    while ($resultat = $req16->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

    elseif(!empty($nom) && !empty($prenom) && !empty($date) && !empty($vaccin) && !empty($assurance) && !empty($centre) && !empty($groupe) && !empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req17->fetch()) 
    {
      echo "Cet enfant est bien inscrit" . "<br />";  
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

     elseif(!empty($nom) && !empty($prenom) && !empty($date) && !empty($vaccin) && !empty($assurance) && !empty($centre) && !empty($groupe) && !empty($penssionaire) && !empty($regime))
  {

    while ($resultat = $req18->fetch()) 
    {
      echo "Cet enfant est bien inscrit" . "<br />";  
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

    elseif(empty($nom) && empty($prenom) && empty($date) && empty($vaccin) && empty($assurance) && !empty($centre) && empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req19->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

     elseif(empty($nom) && empty($prenom) && empty($date) && empty($vaccin) && empty($assurance) && !empty($centre) && !empty($groupe) && empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req20->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

      elseif(empty($nom) && empty($prenom) && empty($date) && empty($vaccin) && empty($assurance) && empty($centre) && empty($groupe) && empty($penssionaire) && !empty($regime))
  {

    while ($resultat = $req21->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

      elseif(empty($nom) && empty($prenom) && empty($date) && empty($vaccin) && empty($assurance) && empty($centre) && empty($groupe) && !empty($penssionaire) && empty($regime))
  {

    while ($resultat = $req22->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }

    elseif(empty($nom) && empty($prenom) && empty($date) && empty($vaccin) && empty($assurance) && !empty($centre) && empty($groupe) && empty($penssionaire) && !empty($regime))
  {

    while ($resultat = $req23->fetch()) 
    {
      echo $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Vaccin_a_jour'] . $resultat['Assurance_a_jour'] . $resultat['Nom_du_centre'] . $resultat["Groupe"] . $resultat['Restauration'] . $resultat['Regime_alimentaire'] . "<br />";                
    }
  }




}
 
 
?>