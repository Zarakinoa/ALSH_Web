<?php

include 'include/connexion_bdd.php';
global $connexion;


if(isset($_POST['Submit']))
{ 
  $centre = $_POST['Centre'];
  $nom = $_POST['Nom'];
  $prenom = $_POST['Prenom'];
  $diplome = $_POST['Diplome'];
  $salaire = $_POST['Salaire'];
  $metier = $_POST['Metier'];

  $req1 = $connexion->prepare("SELECT * FROM Employe WHERE Nom_du_centre = ?");
  $req2 = $connexion->prepare("SELECT * FROM Employe WHERE Nom_du_centre = ? AND Diplome = ?");
  $req3 = $connexion->prepare("SELECT * FROM Employe WHERE Nom_du_centre = ? AND Metier = ?");
  $req4 = $connexion->prepare("SELECT * FROM Employe WHERE Nom_du_centre = ? AND Salaire = ?");
  $req5 = $connexion->prepare("SELECT * FROM Employe WHERE Metier = ?");
  $req6 = $connexion->prepare("SELECT * FROM Employe WHERE Diplome = ?");
  $req7 = $connexion->prepare("SELECT * FROM Employe WHERE Nom = ?");
  $req8 = $connexion->prepare("SELECT * FROM Employe WHERE Prenom = ?");
  $req9 = $connexion->prepare("SELECT * FROM Employe WHERE Nom = ? AND Prenom = ?");
  $req10 = $connexion->prepare("SELECT * FROM Employe WHERE Nom_du_centre = ? AND Nom = ? AND Prenom = ? AND Diplome = ? AND Metier = ?");
  $req11 = $connexion->prepare("SELECT * FROM Employe WHERE Nom_du_centre = ? AND Nom = ? AND Prenom = ? AND Diplome = ? AND Salaire = ? AND Metier = ?");




  $req1->execute(array($centre));
  $req2->execute(array($centre,$diplome));
  $req3->execute(array($centre,$metier));
  $req4->execute(array($centre,$salaire));
  $req5->execute(array($metier));
  $req6->execute(array($diplome));
  $req7->execute(array($nom));
  $req8->execute(array($prenom));
  $req9->execute(array($nom,$prenom));
  $req10->execute(array($centre,$nom,$prenom,$diplome,$metier));
  $req11->execute(array($centre,$nom,$prenom,$diplome,$salaire,$metier));



  if(!empty($centre) && empty($nom) && empty($prenom) && !empty($diplome) && empty($salaire) && empty($metier))
  {

    while ($resultat = $req2->fetch()) 
    {
      echo $resultat['Nom_du_centre'] . " " . $resultat['Nom'] .  " " . $resultat['Prenom'] .  " " . $resultat['Date_naissance'] .  " " . $resultat['Addresse'] .  " " . $resultat['Numero_telephone'] .  " " . $resultat['Diplome'] .  " " . $resultat['Salaire'] .  " " . $resultat['Metier'] . "<br />" . "<br />";
    }
  }

  elseif(!empty($centre) && empty($nom) && empty($prenom) && empty($diplome) && empty($salaire) && empty($metier))
  {
       while ($resultat = $req1->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Diplome'] . $resultat['Salaire'] . $resultat['Metier'] . "<br />";
    }

  }

  elseif(!empty($centre) && empty($nom) && empty($prenom) && empty($diplome) && empty($salaire) && !empty($metier))
  {
       while ($resultat = $req3->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Diplome'] . $resultat['Salaire'] . $resultat['Metier'] . "<br />";
    }

  }
/*
   elseif(!empty($centre) && empty($nom) && empty($prenom) && empty($diplome) && !empty($salaire) && empty($metier))
  {
       while ($resultat = $req4->fetch()) 
    {
      echo $resultat['Nom'];
    }
*/

  elseif(empty($centre) && empty($nom) && empty($prenom) && empty($diplome) && empty($salaire) && !empty($metier))
  {
       while ($resultat = $req5->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Diplome'] . $resultat['Salaire'] . $resultat['Metier'] . "<br />";
     }
  }

  elseif(empty($centre) && empty($nom) && empty($prenom) && !empty($diplome) && empty($salaire) && empty($metier))
  {
       while ($resultat = $req6->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Diplome'] . $resultat['Salaire'] . $resultat['Metier'] . "<br />";
    }
  }

   elseif(empty($centre) && !empty($nom) && empty($prenom) && empty($diplome) && empty($salaire) && empty($metier))
  {
       while ($resultat = $req7->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Diplome'] . $resultat['Salaire'] . $resultat['Metier'] . "<br />";
    }

  }

   elseif(empty($centre) && empty($nom) && !empty($prenom) && empty($diplome) && empty($salaire) && empty($metier))
  {
       while ($resultat = $req8->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Diplome'] . $resultat['Salaire'] . $resultat['Metier'] . "<br />";
    }

  }

   elseif(empty($centre) && !empty($nom) && !empty($prenom) && empty($diplome) && empty($salaire) && empty($metier))
  {
       while ($resultat = $req9->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Diplome'] . $resultat['Salaire'] . $resultat['Metier'] . "<br />";
    }

  }

   elseif(!empty($centre) && !empty($nom) && !empty($prenom) && !empty($diplome) && empty($salaire) && !empty($metier))
  {
       while ($resultat = $req10->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Diplome'] . $resultat['Salaire'] . $resultat['Metier'] . "<br />";
    }

  }

    elseif(!empty($centre) && !empty($nom) && !empty($prenom) && !empty($diplome) && !empty($salaire) && !empty($metier))
  {
       while ($resultat = $req11->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Nom'] . $resultat['Prenom'] . $resultat['Date_naissance'] . $resultat['Addresse'] . $resultat['Numero_telephone'] . $resultat['Diplome'] . $resultat['Salaire'] . $resultat['Metier'] . "<br />";
    }

  }
  
}
 
?>