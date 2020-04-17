<?php

if(isset($_POST['Submit']))
{ 
  $nom = $_POST['Nom'];
  $prenom = $_POST['Prenom'];
  $dates = $_POST['DN'];
  $adresse = $_POST['Adresse'];
  $telephone = $_POST['NT'];
  $vaccin = $_POST['Vaccin'];
  $assurance = $_POST['Assurance'];
  $centre = $_POST['Centre'];
  $groupe = $_POST['Groupe'];
  $restauration = $_POST['Restauration'];
  $regime = $_POST['Regime'];

  echo $nom . $prenom . $dates . $adresse . $telephone . $vaccin . $assurance . $centre . $groupe . $restauration . $regime;

  if(!empty($nom) && !empty($prenom) && !empty($dates) && !empty($adresse) && !empty($telephone) && !empty($vaccin) && !empty($assurance) && !empty($centre) && !empty($groupe) && !empty($restauration) && !empty($regime))
  {
    include 'include/connexion_bdd.php';
    global $connexion;
    
    $req = $connexion->prepare("INSERT INTO Enfant(Nom,Prenom,Date_naissance,Addresse,Numero_telephone,Vaccin_a_jour,Assurance_a_jour,Nom_du_centre,Groupe,Restauration,Regime_alimentaire) VALUES (:nom,:prenom,:dates,:adresse,:telephone,:vaccin,:assurance,:centre,:groupe,:restauration,:regime)");

    $req->execute([
    'nom' => $nom,
      'prenom' => $prenom,
      'dates' => $dates,
      'adresse' => $adresse,
      'telephone' => $telephone,
      'vaccin' => $vaccin,
      'assurance' => $assurance,
      'centre' => $centre,
      'groupe' => $groupe,
      'restauration' => $restauration,
      'regime' => $regime ]);
    
  }else{echo "probleme champ";}
}
else{echo "probleme submit";}

 
?>