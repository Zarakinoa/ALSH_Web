<?php

include 'include/connexion_bdd.php';
global $connexion;

if(isset($_POST['submit']))
{
  
	$identifiant = $_POST['identifiant'];
	$mdp = $_POST['mdp'];  

	if(!empty($identifiant) && !empty($mdp))
	{
    	$q = $connexion->prepare("SELECT * FROM Utilisateur WHERE Identifiant = '$identifiant'");
    	$q ->execute(['Identifiant' => $identifiant]);
    	$result = $q->fetch();

    	if($result == true)
    	{
    		if($mdp == $result['MDP'])
    		{
                $_SESSION['identifiant'] = $result['Identifiant'];
                $_SESSION['mdp'] = $result['MDP'];

                if($identifiant == 'parent')
                {
                    header('Location: Accueilp.php');
                }
                elseif($identifiant == 'employe')
                {
                    header('Location: Accueil.php');

                }
             
                echo "Le mot de passe est correct";

    		} else{echo "Mot de passe incorrect";}
    	}	
    	else 
    	{
    		echo "Le compte portant l'identifiant" . $identifiant . "n'existe pas";
    	}
	} 

  	else
  	{
     	echo "Identifiant ou MDP incorrect";
  	}
	
}

?>



 







 






