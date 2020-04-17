
<!DOCTYPE html>
<html>
<head>
      <meta charset = "utf-8">
      <link rel="stylesheet" href="/Projet/CSS/restep.css" type="text/css">

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
    <li> <a href = "Planningp.php"> Planning </a> </li>
  </ul>

    <ul>
      <li> <a href = "Restaurationp.php"> Restauration </a> </li>
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
<div class="main">
  <div class="card" style="height: 1400px; width: 100%; font-size: 18px;">
<h3 style="color: #03a9f4;"> Article 1 : Description </h5>
  <p> 
  Le Centre de loisirs est organisé et géré par l'Association Familles Rurales des Villages du Châtelet, titulaire d'un
  agrément de Jeunesse et Sports.
  Il accueille tous les enfants de 3 à 17 ans.
  L’équipe d’encadrement est constituée d’un directeur et d’animateurs embauchés à l’année. En complément il
  est fait appel, en fonction du nombre d’enfants inscrits, à des animateurs diplômés et/ou à des stagiaires en cours de
  formations BAFA.
</p>
<h3 style="color: #03a9f4;"> Article 2 : Fonctionnement et Horaires </h5>
<p>
  Le Centre de loisirs est ouvert sur toutes les périodes de vacances scolaires et les mercredis.
  Il se situe pendant les vacances scolaires et les mercredis à l’école publique d’Andance.
  Accueil des enfants à partir de 7h45 et le soir, jusqu'à 18h15.
  Horaires des activités : matin de 9h à 12h ; après-midi de 14h à 17h.
  Déjeuner vers 12h00.
  Pour les enfants ne venant que le matin ou ne mangeant pas à la cantine, les parents devront venir les chercher
  entre 11h30 et 12h00.
  Pour les enfants ne venant que l’après-midi, l’accueil se fait de 13h30 à 14h.
</p>
    <h3 style="color: #03a9f4;"> Article 3 : Inscriptions/Informations </h5>

<p>
  Les inscriptions se font lors des séances d’inscriptions programmées avant chaque période de vacances.
  Pour toute information vous pouvez le faire auprès du directeur sur RDV par téléphone au 04 75 34 37 61 ou 06
  10 49 60 55 au bureau de l’association, quartier Grasset à Andance.
  Aucun enfant ne sera accepté au Centre de loisirs sans inscription préalable.
  Il est nécessaire, pour toute inscription, de fournir :
   Le carnet de vaccination de l’enfant,
   Le bon original d’aide aux temps libres délivré par la CAF (Sauf pour les habitants de l’Ardèche) ou la MSA,
  comportant le numéro d’allocataire et le montant des droits pour chaque enfant.
  Le bon CAF, pour les familles qui en bénéficient, doit être transmis avant la période de l’enfant au Centre de
  loisirs, sans quoi il ne pourra être pris en compte.
   Le numéro de Sécurité Sociale des parents et le numéro d’allocataire.
   Un justificatif du quotient familial
  Les parents devront remplir une fiche d’inscription et une fiche sanitaire de liaison. Ils s’engageront à signaler au
  directeur ou au responsable tout changement.
  Familles Rurales Association des villages du châtelet
  145 impasse de Grasset Association loi 1901, agréée et habilitée pour son action :
  07340 Andance - famille - jeunesse - loisirs
  Tel : 04 75 34 37 61 - éducation - vie associative
  Mail : afrchatelet@yahoo.fr
  En cas d’absence d’un enfant, préalablement inscrit, la journée sera facturée. Dans le cas où l’enfant serait
  malade, la ou les journées ne seront pas facturées si les parents fournissent un certificat médical.
</p>
  <h3 style="color: #03a9f4;"> Article 4 : Tarifs et Modalités de paiement </h5>

<p>
  ADHESION
  Toute inscription au Centre de Loisirs impose aux familles d’être adhérentes au mouvement Familles Rurales
  dont dépend notre association et devront par conséquent s’acquitter d’une cotisation annuelle.
  La carte d’adhésion à l’association Familles Rurales Les Villages du Chatelet se fera lors de la première inscription
  de l’enfant dans l’année en cours. Pour les inscriptions effectuées à partir des vacances de Toussaint la carte sera
  celle de l’année suivante et donc aura une validité pour la fin d’année en cours et pour l’ensemble de l’année à venir.
  Cette carte d’adhésion annuelle est valable pour l’ensemble de la famille et pour toutes les activités organisées
  par l’association. Elle est aussi valable pour les activités organisées par les autres associations Familles Rurales du
  Département.
  TARIFS
  Les tarifs sont établis en fonction du quotient familial de la famille.
  Si la famille habite sur la Communauté de Commune Porte de DrômArdèche (CCPDA) ou sur St Désirat, un tarif
  particulier sera appliqué puisque, dans le cadre du Contrat Enfance Jeunesse, la CCPDA et St Désirat apportent un
  financement supplémentaire à celui de la Caisse d’Allocation Familiale (CAF).
  Une majoration sera appliquée pour les enfants hors CCPDA et Saint désirat.
  Les tarifs s’appliquent à la 1/2journée et à la journée avec ou sans repas, ou à la semaine.
  En cas d’absence de justificatif de quotient familiale, le tarif plafond sera appliqué.
  MODALITES DE PAIEMENT
  Le règlement de la totalité se fait au moment de l’inscription.
  Tout règlement devra impérativement être délivré au directeur ou à son remplaçant.
  Les bons CAF Drôme sont acceptés dans les conditions définies par la prise en charge de la CAF. C'est-à-dire
  qu’ils s’appliquent que si l’enfant reste au moins 3 jours au Centre de Loisirs. Les bons doivent être donnés au
  moment de l’inscription et seront envoyés par l’association à la CAF. En cas de non prise en compte par la Caf de ces
  bons, l’association se réserve le droit de demander le règlement de ces bons à la famille.
  Pour les habitants de l’Ardèche, les bons CAF sont supprimés. Les familles bénéficiaires de ces aides ne recevront
  plus de bons CAF. L’aide de la CAF est directement versée à la structure d’accueil.
  Les règlements par Chèques Vacances sont acceptés sans décompte des frais de gestion appliqués par l’ANCV.
  La prise en charge d’une partie du règlement par les CE ou autres organismes seront acceptés. Dans ce cas un
  chèque de caution sera demandé et restitué après le versement du C.E.
  En cas de difficultés de paiement, des mesures d’assouplissement pourront se faire en accord entre la famille et
  le Directeur ou le représentant de l’association responsable de l’activité. 
  Familles Rurales Association des villages du châtelet
  145 impasse de Grasset Association loi 1901, agréée et habilitée pour son action :
  07340 Andance - famille - jeunesse - loisirs
  Tel : 04 75 34 37 61 - éducation - vie associative
  Mail : afrchatelet@yahoo.fr
</p>
    <h3 style="color: #03a9f4;"> Article 5 : Repas, pique–niques, goûter, garderie et transport </h5>

<p>
  A. Les repas : Doivent impérativement être réservés à l’inscription. Dans le cas où l’enfant est absent il ne
  sera pas remboursé sauf sur présentation d’un certificat médical.
  B. Les pique-niques sont fournis par le Centre de loisirs, au prix d’un repas, pour les enfants inscrits à la
  cantine ce jour là.
  C. Le goûter : Doit être fourni par les parents. Nous vous rappelons que les goûter ne sont pas obligatoires.
  Si le Centre de loisirs le fournit, par exemple pour les goûters partagés occasionnels, les parents
  seront prévenus à l’avance.
  D. Transport : Lors des sorties en car, les parents doivent obligatoirement confier l’enfant au responsable
  du groupe. Au retour, les parents doivent attendre que le responsable du groupe autorise le départ de
  l’enfant même si les parents sont déjà présents à la d escente du car.
  Les parents doivent s’attendre à ce que les horaires des cars se trouvent changés, modifiés, ou que
  le car soit en retard.
  En cas de retard, il est recommandé aux parents d’attendre leur enfant sur le lieu prévu de l’arrivée
  du car qui se situe en général à proximité du Centre de loisirs. Dans la mesure du possible, en cas de
  retard important (supérieur à une ½ heure), le responsable du Centre de Loisirs essayera de contacter
  les parents pour les informer de l’heure de l’arrivée du car.
</p>
  <h3 style="color: #03a9f4;"> Article 6 : Maladie et traitements </h5>

<p>
  Seul le directeur est habilité à donner un médicament à l’enfant avec une autorisation écrite des parents et sur
  présentation de l’ordonnance.
</p>
 <h3 style="color: #03a9f4;"> Article 7 : Vêtements </h5>

<p>
  Les habits des enfants devront être adaptés aux activités proposées. Les enfants devront en outre avoir, selon les
  activités et le temps, avec eux : un sac, une gourde, un chapeau, un vêtement de pluie. Les parents doivent
  également fournir chaque jour une paire de chaussures de sport et une paire de chaussons pour l’intérieur.
  Pour les plus petits, des vêtements de rechange seront indispensables.
</p>
 <h3 style="color: #03a9f4;"> Article 8 : La sécurité </h5>

<p>
  Les enfants devront être confiés à leur arrivée en main propre au directeur et aux animateurs.
  Attention, la responsabilité des salariés ne sera pas engagée si vous ne confiez pas votre enfant en main propre à
  un animateur.
  L’enfant ne devra pas avoir sur lui ni allumettes, ni briquets, ni objets coupants ou de valeurs.
  Les dégâts occasionnés par les enfants tels que vitres brisées sont à la charge des parents.
  Tout enfant dont le comportement est évalué comme inadapté dans la vie de groupe par l’équipe d’animation et
  après concertation avec la famille sera exclu du Centre de loisirs.
  Je certifie avoir lu le règlement intérieur et en accepte les modalités
  Nom :…………………………………… Prénom :……………………………………………….
  Date : / / Signature :
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



