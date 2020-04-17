<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
      <meta charset = "utf-8">
      <link rel="stylesheet" href="/Projet/CSS/reste.css" type="text/css">

</head>
<body>

<div class="header">
 <img src="/Projet/Image/Logo/dreux.png" alt= "Ville de Dreux" id="logo"  />
  <h1>ALSH Dreux</h1>
  <p> Loisir pour un, loisir pour tous !</p>
    <div style="margin-left: 1500px; color: red; font-style: italic;">

    <?php

      if(isset($_SESSION['identifiant']))
      {
        ?>
        <p> Connecté en tant que : <?php echo $_SESSION['identifiant']; ?>
        <?php
      }else{echo "Veuillez vous connectez";}

      ?>



  </div>
</div>
<ul>
    <li> <a href = "Accueil.php"> Accueil </a> </li>
  </ul>

    <ul>
    <li> <a href = "Employe.php"> Employe ALSH </a> </li>
  </ul>

    <ul>
    <li> <a href = "Planning.php"> Planning </a> </li>
  </ul>

  <ul>
    <li> <a href = "Budget.php"> Budget </a> </li>
  </ul>

  <ul>
    <li> <a href = "Enfant.php"> Enfant </a> </li>
</ul>

    <ul>
      <li> <a href = "Restauration.php"> Restauration </a> </li>
  </ul>

    <ul>
      <li>  Informations 
      <ul>
        <li> <a href = "Centre.php"> Centre </a> </li>
        <li> <a href = "Inscription.php"> Inscription </a> </li>
        <li> <a href = "Reglement.php"> Reglement </a> </li>
      </ul>
    </li>
  </ul>


<div class="row">
<div class="main">
  <div class="card">

    <form method="post" action="Inscription1.php">

<label> Nom </label>
<input type="text" name="Nom">

<br />

<label> Prenom </label>
<input type="text" name="Prenom">

<br />

<label> Date de naissance</label>
<input type="text" name="DN">

<br />

<label> Adresse </label>
<input type="text" name="Adresse">

<br />

<label> Numero telephone </label>
<input type="text" name="NT">

<br />

<label> Vaccin </label>
<select name="Vaccin">
  <option value="oui"> Oui </option>
  <option value="non"> Non </option>
</select>

<br />

<label> Assurance </label>
<select name="Assurance">
  <option value="oui"> Oui </option>
  <option value="non"> Non </option>
</select>
<br />

<label> Centre </label>
<select name="Centre">
  <option value="ALSH Croix Tienac"> ALSH Croix Tienac </option>
  <option value="ALSH Murget"> ALSH Murget </option>
  <option value="ALSH Godeau"> ALSH Godeau </option>
</select>

<br />

<label> Groupe </label>
<select name="Groupe">
  <option value="Petit"> Petit </option>
  <option value="Moyen"> Moyen </option>
  <option value="Grand"> Grand </option>
  <option value="Ados">  Ados  </option>
</select>

<br />

<label> Penssionaire </label>
<select name="Restauration">
  <option value="oui"> Oui </option>
  <option value="non"> Non </option>
</select>

<br />

<label> Regime Alimentaire </label>
<select name="Regime">
  <option value=""> --Tout-- </option>
  <option value="sv"> Sans viande </option>
  <option value="sp"> Sans porc </option>
  <option value="c"> Classique </option>

</select>

<br />

<input type="submit" name="Submit" value="Envoyer !" class="Submit">


  </div>


  <img src="/Projet/Image/Fond/inscrire.png" style="height: 500px; width: 690px; margin-left: 105px; margin-top: 200px;">

</div>
</div>

<div class="footer">

  <div class ="titreF">

    <div class="contact"> <h2> Contact </h2> </div>
         <div class = "c1"> Service accueil de loisir : </div>
         <div class = "c2"> Adresse : 13 avenue Marceau 28100 Dreux </div>
         <div class = "c3"> Telephone : 0612458567 </div>
         <div class = "c4"> Mail : <a href="mailto: serviceALSH@gmail.com "> serviceALSH@gmail.com </a> </div>


    <div class="reseau"> <h2> Suivez-nous </h2> </div>
    <div class="galerie"> <h2> Espace Photo </h2> </div> <div class="photo"> <a href="Galerie.php"> Galerie </a> </div>

  </div>
  
<div class="icone">
    <a href="https://www.facebook.com/dreuxaccueilsdeloisirs" class="sociaux"><img src="/Projet/Image/Logo/facebook.png" /> <div class="apFacebook"></div> </a>
    <a href="https://twitter.com/" class="sociaux"><img src="/Projet/Image/Logo/twitter.png" /> <div class="apTwitter"></div></a>
    <a href="https://www.instagram.com/" class="sociaux"><img src="/Projet/Image/Logo/instagram.png"/> <div class="apInstagram"></div></a>
    <a href="https://www.youtube.com/" class="sociaux"><img src="/Projet/Image/Logo/youtube.png" /> <div class="apYoutube"></div></a>
  </div>


</div>

</body>
</html>




