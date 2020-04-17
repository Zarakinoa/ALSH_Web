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
  <div class="card" style="width: 500px">
   <h1 style="color: orange"> Informations </h1>
   <h3 style="color: #03a9f4"> ALSH Dreux <h3>
   <p> ALSH Dreux sont des centres de loisirs primaires regroupant des enfants de 5 à 15 ans. <br /> <br />
       Situé à dreux, ces 3 centres accueillent entre 30-120 enfants. Chaque enfants sera regroupé par groupe d'âges et lui sera attribué 1 à 2 animateurs. <br /> <br />
       Chaque centre possède sa propre cantine, où les enfants inscrits à la cantine sont accueillis chaques jours pour manger de 11h45 à 13h00. <br /> <br />
       Un groupe d'animateur sera désigné chaques jours pour s'occuper des enfants cantiniers. Des plats sont disponibles pour tout regimes alimentaires.
    </p>
    <br /><br />
    <h3 style="color: #03a9f4"> Voici les informations concernant les 3 ALSH de Dreux : </h3>

    <p>
      <br /><br />
       ALSH Croix Tienac : <br />
       Lieu : 6 rue croix tienac 28100 Dreux <br />
       Telephone : 02.37.48.76.41 <br />
       Nombre de salles : 7 <br />
       Effectif : 100 enfants <br />
       Employé : 2 directeurs, 6 animateurs, 1 stagiaire <br />
       Cantine : Restauration Croix Tienac <br />
    </p>

    <p>
       ALSH Murget : <br />
       Lieu : 27 boulevard murget 28100 Dreux <br />
       Telephone : 09.64.85.17.49 <br />
       Nombre de salles : 8 <br />
       Effectif : 120 enfants <br />
       Employé : 1 directeurs, 6 animateurs, 0 stagiaire <br />
       Cantine : Restauration Ecole des Bates <br />
    </p>
     
    <p>
       ALSH Godeau :
       Lieu : 63 rue rotrou 28100 Dreux <br />
       Telephone : 02.37.43.56.71 <br />
       Nombre de salles : 6 <br />
       Effectif : 80 enfants <br />
       Employé : 2 directeurs, 7 animateurs, 1 stagiaire <br />
       Cantine : Restauration Ecole Saint-Martin 
    </p>
  </div>

  <div class="card2">
     <img src="/Projet/Image/Fond/centre1.jpeg" style="height: 480px; width: 650px; border-radius: 10px;" > 
      <img src="/Projet/Image/Fond/centre2.jpg" style="height: 480px; width: 660px; border-radius: 10px;" > 
      <img src="/Projet/Image/Fond/centre6.jpeg" style="height: 480px; width: 650px; border-radius: 10px;" > 
      <img src="/Projet/Image/Fond/centre4.jpeg" style="height: 480px; width: 660px; border-radius: 10px;" > 


  </div>

  <style type="text/css">

    .row .card{
      float: left;
    }

    .card2
    {
        margin-left: 38%;
        height: 1000px;
        width: 1357px;
        background-color: black;
        border-radius: 10px;
        opacity: 0.8;
        padding: 20px;
        margin-top: 20px;
    }
  </style>

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



