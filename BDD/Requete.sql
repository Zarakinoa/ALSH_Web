REQUETE:
SELECT * FROM Budget  /*Affiche les budgets de chaque centre*/
SELECT * FROM Cantine  /*Affiche la cantine de chaques centres et ces caracteristique*/
SELECT * FROM Centre  /*Affiche les informations de chaque centre*/
SELECT * FROM Planning  /*Affiche tout les plannings*/
SELECT * FROM Employe WHERE Employe.Diplome = 'BFD' /*Affiche les employés titulaire d'un BFD*/
SELECT e.Nom_du_centre,e.Nom,e.Prenom,e.Date_naissance FROM Employe e WHERE e.Diplome = 'BAFA' ORDER BY e.Nom ASC  /*Affiche les employe titulaire d'un BAFA par ordre alphabetique*/
SELECT e.Nom_du_centre,e.Nom,e.Prenom,e.Date_naissance,e.Salaire FROM Employe e  ORDER BY `e`.`Salaire`  DESC /*Affiche les salaires dans l'ordes descendant*/
SELECT * FROM Employe WHERE Employe.Diplome = 'Aucun'   /*Affiche les stagiaires*/
SELECT * FROM Planning WHERE Planning.Lieu = 'Centre'   /*affiche le nombre de planning ayant lieu au même*/
SELECT * FROM Employe WHERE Employe.Addresse like '%28100 Dreux' /*Affiche les employés habitant à dreux*/
SELECT * FROM Employe WHERE Employe.Id_employe NOT IN (SELECT Employe.Id_employe FROM Employe WHERE Employe.Addresse like '%28100 Dreux')/*Affiche les employés quin'habitent pas à Dreux*/
SELECT * FROM Employe WHERE Employe.Metier = 'Stagiaire' AND Employe.Salaire != 0  /*stagiaire remunéré*/
SELECT COUNT(*) FROM Enfant WHERE Enfant.Groupe = 'Petit' GROUP BY Enfant.Nom_du_centre  /*Compte le nombre de petits dans chaque centres*/
SELECT * FROM Enfant WHERE Enfant.Vaccin_a_jour = 'non' AND Enfant.Assurance_a_jour = 'non' /*Affcihe les enfants n'ayant pas de vaccin et d'assurance à jour*/
SELECT COUNT(Planning.Id_planning) AS 'nombre_de_planning_aux_centre' FROM Planning WHERE Planning.Lieu  = 'Centre'   /*compte le nombre de planning ayant lieu au centre*/
SELECT COUNT(Planning.Id_planning) AS 'nombre_de_planning_aux_centre' FROM Planning WHERE Planning.Lieu != 'Centre'  /*compte le nombre de planning ayant lieu à l'exterieur*/
SELECT Employe.Nom_du_centre, AVG (Employe.Salaire) AS 'Salaire_moyen_animateur' FROM Employe GROUP BY Employe.Nom_du_centre  /*affiche le salaire moyen des centres*/
SELECT Budget.Nom_du_centre,(Budget.Materiel + Budget.Alimentation + Budget.Transport + Budget.Droit_entree) AS 'Budget_total' FROM Budget  /*Affiche le budget total de chaque centre*/
SELECT * FROM Planning WHERE (Planning.Cout_materiel + Planning.Cout_alimentation + Planning.Cout_transport + Planning.Cout_droit_entree) > 100  /*Affiche les plannings ayant un cout superieur à 100e*/
SELECT * FROM Planning WHERE (Planning.Cout_materiel + Planning.Cout_alimentation + Planning.Cout_transport + Planning.Cout_droit_entree) < 100  /*Affiche les plannings ayant un cout inferieur à 100e*/
SELECT Employe.Nom_du_centre, AVG (Employe.Salaire) AS 'Salaire_moyen_animateurs' FROM Employe WHERE Employe.Diplome = 'BAFA' GROUP BY Employe.Nom_du_centre  /*Affiche le salaire moyen des animateur dans chaque centres*/
SELECT Employe.Nom_du_centre, AVG (Employe.Salaire) AS 'Salaire_moyen_directeurs ' FROM Employe WHERE Employe.Diplome = 'BFD' GROUP BY Employe.Nom_du_centre /*Affiche le salaire moyen des directeurs de chaque centre*/
SELECT Enfant.Id_enfant, Enfant.Nom,Enfant.Prenom,Enfant.Date_naissance,Enfant.Addresse,Enfant.Vaccin_a_jour,Enfant.Nom_du_centre,Enfant.Groupe FROM Enfant WHERE Enfant.Vaccin_a_jour = 'non' /*Affcihe les enfants n'ayant pas de vaccin à jour*/
SELECT Enfant.Id_enfant, Enfant.Nom,Enfant.Prenom,Enfant.Date_naissance,Enfant.Addresse,Enfant.Assurance_a_jour,Enfant.Nom_du_centre,Enfant.Groupe FROM Enfant WHERE Enfant.Assurance_a_jour  = 'non'/*Affcihe les enfants n'ayant pas d'assurance à jour*/
SELECT Centre.Nom_du_centre,(Centre.Effectif) AS 'effectif_total' FROM Centre  /*Affiche l'effectif total des centres*/
SELECT Centre.Nom_du_centre, MAX(Centre.Effectif) AS 'Centre_ayant_le_plaus_de_place' FROM Centre  /*Centre ayant le plus de place*/
SELECT SUM(Centre.Effectif) AS 'capacité_total', (SELECT COUNT(*) FROM Enfant) AS 'enfant_inscrit' FROM Centre  /*Verifie que le nombre d'enfants total est respecté*/
SELECT DISTINCT(Enfant.Id_enfant), Enfant.Nom,Enfant.Prenom FROM Enfant,Planning WHERE Enfant.Groupe = Planning.Groupe AND Planning.Activite = 'Jeu exterieur'  /*Affiche les enfants ayant fait jeu exterieur durant les vacances*/
SELECT * FROM Planning WHERE Planning.Cout_materiel > 0 AND (Planning.Cout_transport + Planning.Cout_alimentation + Planning.Cout_droit_entree) = 0   /*Affiche toutes les activités ayant uniquement un cout en matériel*/
SELECT * FROM Planning WHERE (Planning.Cout_materiel + Planning.Cout_alimentation + Planning.Cout_transport + Planning.Cout_droit_entree) = 0  /*Affiche les activités ayant 0 cout dans touts les budgets*/
SELECT * FROM Planning WHERE Planning.Id_planning NOT IN (SELECT Planning.Id_planning FROM Planning WHERE (Planning.Cout_materiel + Planning.Cout_alimentation + Planning.Cout_transport + Planning.Cout_droit_entree) = 0) /*Affiche les activités ayant au moins un cout cout dans touts les budgets*/
SELECT * FROM Planning WHERE Planning.Id_planning NOT IN (SELECT Planning.Id_planning FROM Planning WHERE Planning.Cout_materiel = 0 OR Planning.Cout_alimentation = 0 OR Planning.Cout_transport = 0 OR Planning.Cout_droit_entree = 0) /*Affiche les plannings ayant un cout dans tous les budgets*/
SELECT Planning.Nom_du_centre,COUNT(*) AS 'nombre_planning_tous_budgets' FROM Planning WHERE Planning.Id_planning NOT IN (SELECT Planning.Id_planning FROM Planning WHERE Planning.Cout_materiel = 0 OR Planning.Cout_alimentation = 0 OR Planning.Cout_transport = 0 OR Planning.Cout_droit_entree = 0) GROUP BY Planning.Nom_du_centre  /*Compte le nombre de plannings ayant un cout dans chaque budget, pour chaque centres*/
SELECT Planning.Nom_du_centre, SUM(Planning.Cout_materiel) AS 'budget_materiel_dépensé',SUM(Planning.Cout_alimentation)'budget_alimentation_dépensé',SUM(Planning.Cout_transport) 'budget_transport_dépensé',SUM(Planning.Cout_droit_entree) 'budget_droit_entrée_dépensé' FROM Planning GROUP BY Planning.Nom_du_centre /*Affiche les budgets dépensés en activités sur tout le séjour*/
SELECT cantine.Nom_du_centre,Cantine.Cout_vacance FROM Cantine /*Affiche le budget dépense par chaque cantine sur tout le séjour*/
SELECT * FROM Employe WHERE Employe.Salaire = (SELECT MAX(Employe.Salaire) FROM Employe)  /*employé le plus payer*/
SELECT Employe.Nom_du_centre, COUNT(*) FROM Employe WHERE Employe.Salaire > 1500 GROUP BY Employe.Nom_du_centre   /*Compte le nombre d'employé ayant un salaire superieur à 1500e dans chaque centre*/
SELECT Planning.Nom_du_centre , SUM(Planning.Cout_materiel) FROM Planning GROUP BY Planning.Nom_du_centre HAVING SUM(Planning.Cout_materiel) > 3000 /*Affiche les centres depassant 3000 en budget matériel*/
SELECT Enfant.Nom_du_centre, COUNT(*) FROM Enfant GROUP BY Enfant.Nom_du_centre HAVING COUNT(*) > 100 /*Affiche les centres comptants plus de 100 enfants*/
SELECT Centre.Nom_du_centre,((Cantine.Cout_vacance/Budget.Alimentation)*100) AS 'pourcentage_budget_donne_cantine' FROM Budget,Cantine,Centre WHERE Centre.Nom_du_centre = Cantine.Nom_du_centre AND Centre.Nom_du_centre = Budget.Nom_du_centre GROUP BY Centre.Nom_du_centre /*Pourcentage du budget total donnée à chaque cantine*/
SELECT Planning.Nom_du_centre,Planning.Groupe,Planning.Activite,Planning.Date_activite,Planning.Horraires,Employe.Prenom,Employe.Metier FROM Planning,Propose,Employe WHERE Propose.Id_planning = Planning.Id_planning AND Propose.Id_employe = Employe.Id_employe  ORDER BY Planning.Nom_du_centre,Planning.Groupe DESC/*Propose*/
/*Affiche les regimes alimentaires par centres*/



VUES:
CREATE VIEW titulaire_BFD AS SELECT * FROM Employe WHERE Employe.Diplome = 'BFD'/*Titulaire du BFD*/
CREATE VIEW enfant_par_groupe_et_centre AS SELECT Enfant.Nom_du_centre,Enfant.Groupe,COUNT(*) AS 'nombres_enfants_inscrits' FROM Enfant GROUP BY Enfant.Nom_du_centre,Enfant.Groupe  /*Compte le nombre d'enfants par groupe/centre*/
CREATE VIEW moyenne_enfants_par_salles AS SELECT Centre.Nom_du_centre, (Centre.Effectif / Centre.Nombre_salles) AS 'nombre_enfants_par_salles' FROM Centre  /*Affiche la moyenne d'enfants par salle de chaque centre*/
CREATE VIEW budget_activite_sejour AS SELECT Planning.Nom_du_centre, SUM(Planning.Cout_materiel) AS 'budget_materiel_dépensé',SUM(Planning.Cout_alimentation)'budget_alimentation_dépensé',SUM(Planning.Cout_transport) 'budget_transport_dépensé',SUM(Planning.Cout_droit_entree) 'budget_droit_entrée_dépensé' FROM Planning GROUP BY Planning.Nom_du_centre /*Affiche chaque budget activite depense sur le sejour*/
CREATE VIEW budget_cantine_depense_sejour AS SELECT budget_activite_sejour.Nom_du_centre,(budget_activite_sejour.budget_alimentation_dépensé + Cantine.Cout_vacance) AS 'budget_total_cantine_sejour' FROM budget_activite_sejour,Cantine GROUP BY budget_activite_sejour.Nom_du_centre /*Budget cantine depense sur le sejour*/
CREATE VIEW budget_total_depense_sejour AS SELECT budget_activite_sejour.Nom_du_centre,(budget_activite_sejour.budget_materiel_dépensé + budget_activite_sejour.budget_transport_dépensé + budget_activite_sejour.budget_droit_entrée_dépensé + budget_cantine_depense_sejour.budget_total_cantine_sejour) AS 'budget_total_depense_sejour' FROM budget_activite_sejour,budget_cantine_depense_sejour GROUP BY budget_activite_sejour.Nom_du_centre /*Budget total depense sur le sejour*/



REQUETE SUR LES VUES:
SELECT * FROM titulaire_BFD WHERE titulaire_BFD.Salaire > 1850 /*Titulaire du BFD ayant un salaire supérieur à 1500e*/
SELECT *FROM titulaire_BFD WHERE titulaire_BFD.Metier = 'Directeur adjoint' /*Parmi les titulaires du BFD lesquels sont seulement directeur adjoint*/
SELECT titulaire_BFD.Nom_du_centre,COUNT(*) AS 'BFD_depassant_1800' FROM titulaire_BFD WHERE titulaire_BFD.Salaire > 1800 GROUP BY titulaire_BFD.Nom_du_centre /*Nombre BFD dépassant les 1800e*/
SELECT budget_activite_sejour.Nom_du_centre,(budget_activite_sejour.budget_materiel_dépensé + budget_activite_sejour.budget_alimentation_dépensé + budget_activite_sejour.budget_transport_dépensé + budget_activite_sejour.budget_droit_entrée_dépensé) AS 'budget_total_activite_sejour' FROM budget_activite_sejour GROUP BY budget_activite_sejour.Nom_du_centre /*Affiche le budget activite total du sejour*/
SELECT budget_cantine_depense_sejour.Nom_du_centre, ((budget_cantine_depense_sejour.budget_total_cantine_sejour / Budget.Alimentation ) * 100) AS 'pourcentage_budget_utilisé_cantine' FROM budget_cantine_depense_sejour, Budget GROUP BY budget_cantine_depense_sejour.Nom_du_centre /*Pourcentage du budget utilisé par les cantines àla fin du séjour*/
SELECT budget_total_depense_sejour.Nom_du_centre,((Budget.Materiel + Budget.Alimentation + Budget.Transport + Budget.Droit_entree) - (budget_total_depense_sejour.budget_total_depense_sejour)) AS 'reste_du_budget' FROM budget_total_depense_sejour,Budget GROUP BY budget_total_depense_sejour.Nom_du_centre /*Affiche le reste des sous sur le budget de depart*/



REQUETE mise à jour, modification etc..:

ALTER TABLE Budget
ADD COLUMN Budget_total int(10) NOT NULL;

ALTER TABLE Employe
MODIFY COLUMN Diplome varchar(10) NOT NULL;

ALTER TABLE Enfant
DROP FOREIGN KEY Enfant_ibfk_1;

ALTER TABLE Enfant
DROP PRIMARY KEY;

ALTER TABLE Enfant
ADD PRIMARY KEY (Id_enfant);

ALTER TABLE Enfant
ADD FOREIGN KEY (Nom_du_centre) REFERENCES Centre (Nom_du_centre)
ON DELETE CASCADE
ON UPDATE CASCADE;

UPDATE Planning
SET Groupe = UPPER(Groupe)
WHERE Groupe = 'Ados';


UPDATE Employe
SET Diplome = LOWER (Diplome);


DELETE FROM Employe
WHERE (Employe.metier) = 'Stagiaire' AND (Employe.Salaire) = '0';
