<?php session_start(); ?>

<?php include 'connexion.php'?>
<?php include 'deconexion.php'?>


<!DOCTYPE html>
<html>
<head>
      <meta charset = "utf-8">
      <link rel="stylesheet" href="CSS/Deconexionp.css" type="text/css">

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
    <li> <a href = "Accueilp.php"> Accueil </a> </li>
  </ul>

    <ul>
    <li> <a href = "Planningp.php"> Planning </a>
    
    </li>
  </ul>

    <ul>
      <li> <a href = "Restaurationp.php"> Restauration </a>
    </li>
  </ul>

    <ul>
      <li>  Informations 
      <ul>
        <li> <a href = "Centrep.php"> Centre </a> </li>
        <li> <a href = "Reglementp.php"> Reglement </a> </li>
      </ul>
    </li>
  </ul>


<div class="row">

  <div class="leftcolumn">

    <div class="card">
      <h2 style="color: orange"> Acceuil</h2>
      <h5 style="color: #03a9f4"> Parents </h5>
      <div class="fakeimg"> </div>
      <p> ALSH_Dreux.com est un site web réservé aux employés de la marie de Dreux, ainsi qu'aux parents des enfants et futurs enfants inscrits dans les centres de loisirs de Dreux.
        Le site web à pour but, de donner la possibilités aux parents de faire la demande d'inscription de leurs enfants en ligne, ainsi que d'accéder à certaines informations concernant les centres de loisirs de Dreux (ex: les plannings). Il leur suffit de se connecter avec l'identifiant parent et le mot de passe projet.
      </p>

    </div>

    <div class="card">
      <h2 style="color: orange"> But précis </h2>
      <h5 style="color: #03a9f4"> Employés </h5>
      <div class="fakeimg1"> </div>
      <p>
        En ce qui concerne les employés, le but d'ALSH_Dreux.com est de vous apportés un support informatique pour traiter les demandes d'inscriptions d'enfants dans les centres de loisirs faites par les   parents. Le site ne se limite pas à l'inscription des enfants, il vous donne accès à toutes informations concernant chaques centres allant d'un budget à un nombre de salle par exemple.
        Vous pourrez donc savoir si il est possible d'inscrire tel enfant dans tel centre. La mise à jour des Plannings, des enfants se désincrivant, des bugdet etc.. ce rapporte à vous. Vos identifiants sont ceux qui vous ont était donner en mairie en début d'année. La mise à jour des plannings, des inscriptions,des budgets... vous pemettant de réaliser vos missions dans le cadre de votre travail.     </p>

      <p>
        Avec ALSH_Dreux.com vous gagnerais un temp inconsidérable sur votre travail.
      </p>

    </div>
  </div>

  <div class="rightcolumn">

        <div id="box0">

      <h2> Connexion </h2>

<form method="POST">

      <input type="submit" name="submit1" value="Se déconecté" class="Submit">
</form>


    </div>


    <div class = "card">
      <div id = "Diapo"> </div>
    </div>

    <div class="card">
      <h3> Dates d'inscriptions </h3>
      <p> <a href = "/Projet/Image/PDF/Date.pdf" title ="Dates inscriptions"> PDF dates d'inscriptions parents travaillant/non-travaillant</a>
      </p>

    </div>
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
    <div class="galerie"> <h2> Espace Photo </h2> </div> <div class="photo"> <a href="Galeriep.php"> Galerie </a> </div>

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


