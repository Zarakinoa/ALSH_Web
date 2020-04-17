<?php

include 'include/connexion_bdd.php';
global $connexion;


if(isset($_POST['Submit']))
{ 
  
  $centre = $_POST['Centre'];
  $groupe = $_POST['Groupe'];
  $date   = $_POST['Dates'];
  $horraires = $_POST['Horraires'];

  $req1 = $connexion->prepare("SELECT * FROM Planning WHERE Nom_du_centre = ? ");
  $req2 = $connexion->prepare("SELECT * FROM Planning WHERE Nom_du_centre = ? AND Groupe = ?");
  $req3 = $connexion->prepare("SELECT * FROM Planning WHERE Nom_du_centre = ? AND Groupe = ? AND Date_activite = ?");
  $req4 = $connexion->prepare("SELECT * FROM Planning WHERE Nom_du_centre = ? AND Groupe = ? AND Date_activite = ? AND Horraires = ?");
  $req5 = $connexion->prepare("SELECT * FROM Planning WHERE Groupe = ? AND Horraires = ?");
  $req6 = $connexion->prepare("SELECT * FROM Planning WHERE Date_activite = ? AND Horraires = ?");
  $req7 = $connexion->prepare("SELECT * FROM Planning WHERE Nom_du_centre = ? AND Date_activite = ?");
  $req8 = $connexion->prepare("SELECT * FROM Planning WHERE Nom_du_centre = ? AND Horraires = ?");
  $req9 = $connexion->prepare("SELECT * FROM Planning WHERE Date_activite = ?");
  $req10 = $connexion->prepare("SELECT * FROM Planning WHERE Horraires = ?");
  $req11 = $connexion->prepare("SELECT * FROM Planning WHERE Groupe = ?");
  $req12 = $connexion->prepare("SELECT * FROM Planning WHERE Groupe = ? AND Date_activite = ?");
  $req13 = $connexion->prepare("SELECT * FROM Planning WHERE Groupe = ? AND Horraires = ?");
  $req14 = $connexion->prepare("SELECT * FROM Planning WHERE Nom_du_centre = ? AND Groupe = ? AND Horraires = ?");
  $req15 = $connexion->prepare("SELECT * FROM Planning WHERE Nom_du_centre = ? AND Date_activite = ? AND Horraires = ?");







  $req1->execute(array($centre));
  $req2->execute(array($centre,$groupe));
  $req3->execute(array($centre,$groupe,$date));
  $req4->execute(array($centre,$groupe,$date,$horraires));
  $req5->execute(array($groupe,$horraires));
  $req6->execute(array($date,$horraires));
  $req7->execute(array($centre,$date));
  $req8->execute(array($centre,$horraires));
  $req9->execute(array($date));
  $req10->execute(array($horraires));
  $req11->execute(array($groupe));
  $req12->execute(array($groupe,$date));
  $req13->execute(array($groupe,$horraires));
  $req14->execute(array($centre,$groupe,$horraires));
  $req15->execute(array($centre,$date,$horraires));





  if(!empty($centre) && empty($groupe) && empty($date) && empty($horraires))
  {

    while ($resultat = $req1->fetch()) 
    {
      ?>
      <html>
        <tr> <?php echo $resultat['Nom_du_centre'] . " " . $resultat['Groupe'] . " " . $resultat['Activite'] . " " . $resultat['Date_activite'] . " " . $resultat['Horraires'] . " " . $resultat['Lieu'] . " " . $resultat['Cout_materiel'] . " " . $resultat['Cout_alimentation'] . " " . $resultat['Cout_transport'] . " " . $resultat['Cout_droit_entree'] . "<br />"; ?> </tr>
      </html>
      <?php
    }
  }

  elseif(!empty($centre) && !empty($groupe) && empty($date) && empty($horraires))
  {
       while ($resultat = $req2->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";    }

  }

    elseif(!empty($centre) && !empty($groupe) && !empty($date) && empty($horraires))
  {
       while ($resultat = $req3->fetch()) 
    {
     echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

    elseif(!empty($centre) && !empty($groupe) && !empty($date) && !empty($horraires))
  {
       while ($resultat = $req4->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

    elseif(empty($centre) && !empty($groupe) && !empty($date) && !empty($horraires))
  {
       while ($resultat = $req5->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

    elseif(empty($centre) && empty($groupe) && !empty($date) && !empty($horraires))
  {
       while ($resultat = $req6->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

    elseif(!empty($centre) && empty($groupe) && !empty($date) && empty($horraires))
  {
       while ($resultat = $req7->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

    elseif(!empty($centre) && empty($groupe) && empty($date) && !empty($horraires))
  {
       while ($resultat = $req8->fetch()) 
    {
      echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

    elseif(empty($centre) && empty($groupe) && !empty($date) && empty($horraires))
  {
       while ($resultat = $req9->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

    elseif(empty($centre) && empty($groupe) && empty($date) && !empty($horraires))
  {
       while ($resultat = $req10->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

    elseif(empty($centre) && !empty($groupe) && empty($date) && empty($horraires))
  {
       while ($resultat = $req11->fetch()) 
    {
      echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }


    elseif(empty($centre) && !empty($groupe) && !empty($date) && empty($horraires))
  {
       while ($resultat = $req12->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }


    elseif(empty($centre) && !empty($groupe) && empty($date) && !empty($horraires))
  {
       while ($resultat = $req13->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

    elseif(!empty($centre) && !empty($groupe) && empty($date) && !empty($horraires))
  {
       while ($resultat = $req14->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

    elseif(!empty($centre) && empty($groupe) && !empty($date) && !empty($horraires))
  {
       while ($resultat = $req14->fetch()) 
    {
       echo $resultat['Nom_du_centre'] . $resultat['Groupe'] . $resultat['Activite'] . $resultat['Date_activite'] . $resultat['Horraires'] . $resultat['Lieu'] . $resultat['Cout_materiel'] . $resultat['Cout_alimentation'] . $resultat['Cout_transport'] . $resultat['Cout_droit_entree'] . "<br />";
    }

  }

}
 
 
?>