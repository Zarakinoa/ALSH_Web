SET NAMES 'utf8';

CREATE DATABASE Centre_de_loisir;

use Centre_de_loisir;

CREATE TABLE Centre(
    Nom_du_centre varchar(50) NOT NULL,
    Lieu varchar(30) NOT NULL,
    Numero_telephone varchar(20) NOT NULL,
    Nombre_salles int(2) NOT NULL,
    Effectif int(3) NOT NULL,
    PRIMARY KEY (Nom_du_centre)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Centre VALUES ('ALSH Croix Tienac','Dreux','02.37.48.76.41','7','100');
INSERT INTO Centre VALUES ('ALSH Godeau','Dreux','09.64.85.17.49','8','120');
INSERT INTO Centre VALUES ('ALSH Murget','Dreux','02.37.43.56.71','6','80');


  CREATE TABLE Cantine(
      Nom_cantine varchar(50) NOT NULL,
      Nom_du_centre varchar(50) NOT NULL,
      Capacite_place int(3) NOT NULL,
      Lieu Varchar(30) NOT NULL,
      Cout_vacance int(5) NOT NULL,
      PRIMARY KEY(Nom_cantine,Nom_du_centre),
      FOREIGN KEY(Nom_du_centre) REFERENCES Centre (Nom_du_centre)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Cantine VALUES ('Restauration Croix Tienac','ALSH Croix Tienac','60','Dreux','10000');
INSERT INTO Cantine VALUES ('Restauration Ecole Saint-Martin','ALSH Godeau','80','Dreux','15000');
INSERT INTO Cantine VALUES ('Restauration Ecole des Bates','ALSH Murget','35','Dreux','5000');


CREATE TABLE Employe(
    Id_employe int(2) NOT NULL,
    Nom_du_centre varchar(50) NOT NULL,
    Prenom varchar(30) NOT NULL,
    Nom varchar(30) NOT NULL,
    Date_naissance varchar(10) NOT NULL,
    Addresse varchar(100) NOT NULL,
    Numero_telephone varchar(20) NOT NULL,
    Diplome varchar(30) NOT NULL,
    Salaire int(5) NOT NULL,
    Metier varchar(30) NOT NULL,
    PRIMARY KEY(Id_employe),
    FOREIGN KEY (Nom_du_centre) REFERENCES Centre (Nom_du_centre)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Employe VALUES ('1','ALSH Murget','Luc','Dupond','21/07/1974','10 de St-Martin 28100 Dreux','06.42.15.78.46','BFD','1863','Directeur');
INSERT INTO Employe VALUES ('2','ALSH Murget','Thibaud','Eunais','17/01/1993','28 rue imbermais 28100 Dreux','07.64.15.45.55','BAFA','1564','Animateur');
INSERT INTO Employe VALUES ('3','ALSH Murget','Amelie','Leblanc','04/08/1989','67 avenue du champelon 28500 Vernouillet ','06.44.11.46.77','BAFA','1560','Animateur');
INSERT INTO Employe VALUES ('4','ALSH Murget','Pierre','Anoure','12/07/19984','14 rue des sapins 28500 Vernouillet ','06.62.01.34.72','BAFA','1455','Animateur');
INSERT INTO Employe VALUES ('5','ALSH Murget','Aboubakar','Aboubaisse','23/01/1995','25 rue emile zola 28350 St-lubin des joncherest','06.61.30.63.61','BAFA','1603','Animateur');
INSERT INTO Employe VALUES ('6','ALSH Murget','Laurine','Ducouflot','09/11/1988','46 avenue de la papotiere 28100 Dreux','07.08.20.45.35','BAFA','1476','Animateur');
INSERT INTO Employe VALUES ('7','ALSH Murget','Laura','Gentil','01/10/1991','78 boulevard du grand chenes 28100 Dreux','06.71.80.85.77','BAFA','1586','Animateur');


INSERT INTO Employe VALUES ('8','ALSH Godeau','Claire','Besançon','04/11/1982','61 cours Jean Jaures 28100 Dreux','05.66.44.52.43','BFD','1987','Directeur');
INSERT INTO Employe VALUES ('9','ALSH Godeau','Catherine','Dumais','21/08/1983','82 rue des Coudriers 28100 Dreux','03.32.41.29.50','BFD','1817','Directeur adjoint');
INSERT INTO Employe VALUES ('10','ALSH Godeau','Yacine','El fatmi','15/12/1992','12 boulevard de la Liberation 28350 St-lubin des joncherest','04.26.68.56.15','BAFA','1541','Animateur');
INSERT INTO Employe VALUES ('11','ALSH Godeau','Julie','Carreas','03/06/1991',' 82 Place du Jeu de Paume 28100 Dreux','04.22.75.10.22','BAFA','1526','Animateur');
INSERT INTO Employe VALUES ('12','ALSH Godeau','Antoine','Ponteuil','09/10/1996','35 Rue du Limas 28350 St-lubin des joncherest','01.22.30.63.00','BAFA','1497','Animateur');
INSERT INTO Employe VALUES ('13','ALSH Godeau','Karim','Fadji','17/06/1997','66 place Maurice-Charretier 28500 Vernouillet','05.51.77.59.88','BAFA','1567','Animateur');
INSERT INTO Employe VALUES ('14','ALSH Godeau','Justine','Boisseau','25/01/1989','57 rue du Général Ailleret 28100 Dreux','01.96.60.01.09','BAFA','1522','Animateur');
INSERT INTO Employe VALUES ('15','ALSH Godeau','Laure','Merascylla','14/02/1993','49 Faubourg Saint Honoré 28100 Dreux','01.13.40.25.81','BAFA','1452','Animateur');
INSERT INTO Employe VALUES ('16','ALSH Godeau','Mehmet','Ogun','18/09/1993','56 rue La Boétie 28500 Vernouillet','01.87.50.36.34 28100 Dreux','BAFA','1458','Animateur');
INSERT INTO Employe VALUES ('17','ALSH Godeau','Jean','Escanor','05/11/1995','46 boulevard d Alsace 28350 St-lubin des joncherest','01.97.84.80.71','Aucun','0','Stagiaire');



INSERT INTO Employe VALUES ('18','ALSH Croix Tienac','Anne','Montaire','27/01/19785','81 rue des lieutemants Thomazo 28100 Dreux','03.70.72.69.73','BFD','1888','Directeur');
INSERT INTO Employe VALUES ('19','ALSH Croix Tienac','Carolle','Golin','01/11/1989','65 rue Léon Dierx 28100 Dreux','03.81.29.16.54','BFD','1754','Directeur adjoint');
INSERT INTO Employe VALUES ('20','ALSH Croix Tienac','Ahmed','Sisri','24/08/1998','97 rue de la Boétie 28350 St-lubin des joncherest','05.55.86.58.05','BAFA','1563','Animateur');
INSERT INTO Employe VALUES ('21','ALSH Croix Tienac','Laurence','Lemaire','15/07/1996','76 rue Gouin de Beauchesne 28500 Vernouillet','01.26.41.56.44','BAFA','1501','Animateur');
INSERT INTO Employe VALUES ('22','ALSH Croix Tienac','Stephane','Quesse','17/06/1994','15 avenue de l Amandier 28100 Dreux','05.72.78.31.30','BAFA','1474','Animateur');
INSERT INTO Employe VALUES ('23','ALSH Croix Tienac','Sami','Panca','21/02/1992','7 Rue Joseph Vernet 28100 Dreux','05.21.23.56.10','BAFA','1531','Animateur');
INSERT INTO Employe VALUES ('24','ALSH Croix Tienac','Evelyne','Deliome','08/07/1997','95 Place Charles de Gaulle 28100 Dreux','03.88.57.82.06','BAFA','1576','Animateur');
INSERT INTO Employe VALUES ('25','ALSH Croix Tienac','Clarence','Drole','09/12/1990','35 rue de Lille 28500 Vernouillet','01.07.63.55.07','BAFA','1489','Animateur');
INSERT INTO Employe VALUES ('26','ALSH Croix Tienac','Paul','Esterossa','19/04/1993','14 rue Gontier-Patin 28100 Dreux','05.08.15.06.45','Aucun','450','Stagiaire');



CREATE TABLE Enfant(
    Id_enfant int(2) NOT NULL AUTO_INCREMENT,
    Nom varchar(30) NOT NULL,
    Prenom varchar(30) NOT NULL,
    Date_naissance varchar(10) NOT NULL,
    Addresse varchar(100) NOT NULL,
    Numero_telephone varchar(20) NOT NULL,
    Vaccin_a_jour varchar(3) NOT NULL,
    Assurance_a_jour varchar(3) NOT NULL,
    Nom_du_centre varchar(50) NOT NULL,
    Groupe varchar(20) NOT NULL,
    Restauration varchar(3) NOT NUll,
    Regime_alimentaire varchar(3),
    PRIMARY KEY(Id_enfant),
    FOREIGN KEY(Nom_du_centre) REFERENCES Centre(Nom_du_centre)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;

    INSERT INTO Enfant VALUES ('','De Launay','Lotye','10/23/2011','31 rue Marguerite','01.64.15.45.55','oui','oui','ALSH Croix Tienac','Petit','oui','sv'),
                              ('','Tachel','Honoré','10/7/2003','74 rue Banaudon','04.44.11.46.77','oui','non','ALSH Godeau','Ados','non',''),
                              ('','Lajeunesse','Théophile','5/2/2010','34 rue Reine Elisabeth','01.62.01.34.72','oui','oui','ALSH Godeau','Moyen','oui','sv'),
                              ('','Courtemanche','Varden','8/6/2010','26 Rue du Palais','01.61.30.63.61','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Champagne','Joanna','3/18/2004','41 rue de Geneve','04.08.20.45.35','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Labbé','Gaetane','11/14/2013','4 place Maurice-Charretier','03.71.80.85.77','non','oui','ALSH Murget','Petit','oui','sv'),
                              ('','Grandbois','Lance','3/28/2008','42 rue Reine Elisabeth','04.71.16.51.36','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Bellefeuille','Ila','3/27/2009','99 rue des lieutemants Thomazo','03.19.77.36.37','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Lemaître','Aubin','4/6/2011','74 Rue Roussy','03.97.16.40.94','non','non','ALSH Croix Tienac','Petit','oui','sp'),
                              ('','Chicoine','Aubert','6/22/2004','48 rue Descartes','03.98.19.59.66','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Rivard','Lundy','12/21/2011','47 Rue Bonnet','04.98.99.82.200','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Houle','Dreux','6/18/2004','36 cours Jean Jaures','05.26.52.60.67','oui','non','ALSH Godeau','Ados','non',''),
                              ('','Bouchard','Geoffrey','5/8/2009','60 Rue du Limas','05.71.95.59.70','oui','oui','ALSH Croix Tienac','Moyen','oui','c'),
                              ('','Sevier','Fifi','12/16/2010','3 rue des Lacs','02.70.23.03.44','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','LaCaille','Evrard','6/20/2008','46 rue Sébastopol','05.26.32.66.06','oui','non','ALSH Godeau','Grand','oui','sp'),
                              ('','Lemelin','Pierpont','6/13/2004','18 route de Lyon','02.00.32.53.35','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Crête','Maurice','9/7/2010','51 Quai des Belges','03.16.62.52.59','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Arsenault','Benjamin','8/8/2011','42 Rue Hubert de Lisle','05.43.42.65.71','oui','non','ALSH Godeau','Petit','non',''),
                              ('','Primeau','Vick','6/23/2005','23 rue Victor Hugo','03.36.31.01.81','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Gareau','Pierrette','1/20/2013','67 avenue Jules Ferry','02.87.24.68.30','oui','non','ALSH Murget','Petit','non',''),
                              ('','Lapresse','Théophile','6/8/2003','92 Rue du Palais','01.32.25.96.01','non','oui','ALSH Murget','Ados','oui','c'),
                              ('','Patry','Christelle','1/14/2006','72 Chemin Des Bateliers','04.56.41.25.86','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Grenier','Arnou','9/16/2003','88 rue de l Epeule','02.59.74.54.29','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Batard','Fabrice','12/30/2005','30 rue Jean-Monnet','01.46.84.24.88','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Patry','Beaufort','2/3/2002','79 Rue Frédéric Chopin','03.65.42.91.99','oui','non','ALSH Godeau','Ados','oui','sv'),
                              ('','Tisserand','Océane','1/6/2010','85 place Maurice-Charretier','01.65.95.56.47','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Ménard','Travers','3/5/2005','5 avenue de Provence','03.44.05.40.22','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Durand','Bayard','6/19/2011','27 rue Michel Ange','02.70.26.09.96','oui','non','ALSH Croix Tienac','Petit','oui','sv'),
                              ('','Poisson','Mignonette','4/14/2013','95 boulevard Amiral Courbet','04.89.26.94.76','non','non','ALSH Murget','Petit','oui','sp'),
                              ('','Louis','Bernard','6/5/2009','72 cours Franklin Roosevelt','04.62.49.04.64','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Majory','Arnaude','4/5/2009','68 rue du Paillle en queue','01.34.31.70.31','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Goguen','Maurice','12/26/2002','68 rue Marie de Médicis','04.04.00.65.78','oui','non','ALSH Croix Tienac','Ados','non',''),
                              ('','Lapresse','Archard','1/31/2009','83 place Stanislas','02.62.78.61.66','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','de Brisay','Armina','10/4/2004','21 Avenue De Marlioz','01.86.88.13.11','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Plourde','Clovis','7/2/2007','78 rue de la Boétie','01.89.07.46.16','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Dastous','Fabienne','9/18/2012','50 boulevard Albin Durand','04.35.98.09.68','oui','oui','ALSH Godeau','Petit','oui','sp'),
                              ('','Brisebois','Victor','2/27/2004','62 rue du Général Ailleret','05.08.46.19.50','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Vincent','Brice','9/5/2007','57 avenue Voltaire','05.01.32.63.73','oui','non','ALSH Murget','Grand','oui','c'),
                              ('','Faubert','Hortense','2/10/2007','73 Rue Bonnet','04.89.78.73.77','oui','oui','ALSH Croix Tienac','Grand','oui','sp'),
                              ('','Fugère','Ila','6/22/2003','19 Rue Joseph Vernet','04.89.90.24.02','oui','non','ALSH Godeau','Ados','non',''),
                              ('','Jetté','Rémy','5/22/2010','49 rue des Chaligny','04.56.48.32.42','oui','non','ALSH Murget','Moyen','oui','sp'),
                              ('','Labrecque','Carolos','10/29/2010','31 Rue du Limas','05.31.43.18.15','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Cailot','Jérôme','1/21/2012','34 Place Charles de Gaulle','03.20.37.30.37','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Duplanty','Lorraine','9/18/2007','59 Place Charles de Gaulle','03.23.72.39.99','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Chartré','Burrell','6/7/2011','81 rue Nationale','01.44.11.63.15','oui','oui','ALSH Croix Tienac','Petit','oui','c'),
                              ('','Chartré','Fortun','2/23/2010','87 rue du Gue Jacquet','02.61.58.28.53','non','oui','ALSH Godeau','Moyen','non',''),
                              ('','Charpie','Toussaint','10/12/2008','63 rue des Soeurs','01.54.55.36.41','non','oui','ALSH Murget','Grand','non',''),
                              ('','Lavoie','Ila','6/22/2006','77 rue Lenotre','03.43.90.79.50','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Leclair','Royden','7/15/2013','34 rue Bonneterie','04.19.74.67.77','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Brisebois','Sylvie','9/26/2010','75 Rue de la Pompe','04.09.24.75.45','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Belisle','Jay','2/23/2008','5 Rue de la Pompe','03.97.12.84.79','non','oui','ALSH Godeau','Grand','non',''),
                              ('','Truchon','Jewel','8/3/2009','86 rue du Président Roosevelt','01.70.34.97.45','oui','oui','ALSH Godeau','Moyen','oui','c'),
                              ('','Doiron','Vallis','1/5/2003','53 Rue de Strasbourg','01.70.34.08.21','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Monrency','Gérard','8/20/2010','60 Rue Roussy','01.36.56.56.26','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Tremblay','Théodore','5/11/2010','1 rue des six frères Ruellan','04.26.70.29.56','oui','non','ALSH Murget','Petit','oui','c'),
                              ('','Fréchette','Josette','9/11/2003','7 avenue de l Amandier','05.03.17.46.49','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Harquin','Merlin','6/29/2007','3 rue Adolphe Wurtz','01.05.16.83.65','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Saindon','Gérard','1/31/2004','7 boulevard Amiral Courbet','04.08.43.49.94','oui','oui','ALSH Murget','Ados','non',''),
                              ('','Cailot','Charlot','11/16/2005','72 rue Michel Ange','05.43.71.53.69','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Chevrette','Jacqueline','5/8/2004','54 Rue Joseph Vernet','01.05.62.31.29','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Vaillancourt','Diane','7/7/2011','74 rue Nationale','01.57.78.26.89','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Girard','Éric','7/9/2012','58 rue des lieutemants Thomazo','03.88.73.36.43','oui','non','ALSH Croix Tienac','Petit','oui','sv'),
                              ('','Desnoyers','Oliver','3/5/2009','70 Rue Roussy','02.96.43.66.16','oui','non','ALSH Godeau','Moyen','non',''),
                              ('','Richard','Agnès','2/20/2011','23 rue Gontier-Patin','05.37.85.42.37','non','non','ALSH Godeau','Petit','oui','sv'),
                              ('','Grenier','Ancelote','10/30/2005','16 rue de la République','04.41.73.36.61','oui','oui','ALSH Murget','Grand','non',''),
                              ('','Migneault','Galatee','3/12/2008','32 cours Jean Jaures','01.62.43.89.37','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Boucher','Christophe','6/1/2009','65 rue Marguerite','01.25.08.02.52','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Rodrigue','Madelene','7/30/2009','24 route de Lyon','01.85.46.77.24','oui','non','ALSH Murget','Moyen','non',''),
                              ('','Bourque','Gaetane','7/4/2005','29 Faubourg Saint Honoré','01.73.52.68.23','non','oui','ALSH Godeau','Grand','non',''),
                              ('','Talon','Julienne','9/20/2009','47 avenue Voltaire','04.99.00.77.46','oui','oui','ALSH Croix Tienac','Moyen','oui','sp'),
                              ('','Leroux','Didier','9/7/2003','44 rue Gouin de Beauchesne','01.78.87.87.28','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Gaillard','Benoît','4/20/2012','8 quai Saint-Nicolas','03.12.53.04.25','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Cinq-Mars','Grégoire','6/12/2007','49 Rue de Verdun','01.19.56.46.21','non','non','ALSH Croix Tienac','Grand','non',''),
                              ('','Turgeon','Fifi','12/27/2007','19 rue Clement Marot','04.86.40.72.12','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Monrency','Serge','5/21/2013','31 rue des Dunes','05.62.30.23.45','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Gour','Denise','8/10/2013','23 rue des Lacs','02.04.89.42.77','oui','oui','ALSH Croix Tienac','Petit','oui','sp'),
                              ('','Rouleau','Blondelle','6/8/2012','40 avenue du Marechal Juin','04.60.32.43.73','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Caya','Sargent','10/18/2010','66 Cours Marechal-Joffre','01.45.99.97.75','oui','non','ALSH Godeau','Moyen','non',''),
                              ('','Villeneuve','Théodore','1/25/2005','51 boulevard Bryas','01.52.25.48.10','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Boivin','Aiglentina','4/19/2003','86 rue du Président Roosevelt','02.42.26.72.97','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Salois','Somerville','4/22/2004','23 rue de la République','04.49.50.58.26','oui','non','ALSH Godeau','Ados','oui','sv'),
                              ('','Marcil','Astrid','3/8/2007','17 avenue Ferdinand de Lesseps','02.88.16.92.85','oui','oui','ALSH Murget','Grand','oui','sv'),
                              ('','Chartré','Methena','11/22/2009','9 Rue de Verdun','01.39.76.04.28','oui','non','ALSH Godeau','Moyen','non',''),
                              ('','Ayot','Linette','8/6/2002','75 Avenue Millies Lacroix','02.07.99.00.17','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Lagrange','Noelle','5/24/2008','7 rue Gustave Eiffel','01.01.42.13.84','oui','oui','ALSH Godeau','Grand','oui','sp'),
                              ('','Duranseau','Alexandre','3/14/2009','18 rue du Château','04.59.11.40.51','oui','oui','ALSH Croix Tienac','Moyen','oui','c'),
                              ('','Galarneau','Marphisa','5/7/2010','25 rue du Château','02.51.09.57.60','oui','non','ALSH Murget','Moyen','non',''),
                              ('','Perillard','Jacquenett','9/1/2011','78 route de Lyon','02.81.79.57.03','oui','oui','ALSH Godeau','Petit','oui','c'),
                              ('','Duval','Mathilde','2/16/2012','92 rue de l Aigle','03.54.02.12.28','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Huard','Esmeraude','2/15/2008','21 rue du Paillle en queue','05.27.37.66.87','oui','non','ALSH Godeau','Grand','non',''),
                              ('','Hébert','Aurore','3/9/2011','59 rue Jean-Monnet','01.99.57.45.74','oui','non','ALSH Croix Tienac','Petit','non',''),
                              ('','Laboissonnière','Burrell','1/19/2011','54 cours Jean Jaures','05.60.03.09.21','non','oui','ALSH Murget','Petit','non',''),
                              ('','Douffet','Verrill','1/13/2009','38 Rue St Ferréol','03.58.52.66.34','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Grandbois','Beaufort','11/8/2008','50 avenue Jean Portalis','05.50.51.86.87','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Trudeau','Sennet','12/10/2002','63 rue Nationale','01.43.38.16.39','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Belisle','Burrell','7/19/2007','28 rue de Geneve','01.65.61.65.74','non','non','ALSH Croix Tienac','Grand','non',''),
                              ('','Audet','Beltane','8/27/2010','53 Boulevard de Normandie','01.76.87.74.46','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Chnadonnet','Nanna','4/4/2004','53 place de Miremont','01.06.24.23.34','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Blondlot','Arnaude','2/21/2010','68 rue Gontier-Patin','05.41.41.89.58','oui','oui','ALSH Croix Tienac','Moyen','oui','sv'),
                              ('','Audet','Avent','4/21/2009','65 Rue de la Pompe','04.41.02.40.83','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Bisson','Georges','4/18/2009','99 rue de la Mare aux Carats','04.24.35.66.24','oui','non','ALSH Godeau','Moyen','non',''),
                              ('','Favreau','Auda','4/19/2007','90 rue du Général Ailleret','02.29.43.31.79','oui','oui','ALSH Murget','Grand','oui','sp'),
                              ('','Allaire','Leverett','5/1/2011','58 rue Grande Fusterie','01.55.41.14.93','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Chalut','Victor','8/23/2010','85 place Maurice-Charretier','01.31.17.48.46','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Gamelin','Charline','11/4/2004','87 rue de Lille','03.95.59.52.77','oui','oui','ALSH Godeau','Ados','oui','sp'),
                              ('','Deblois','Legget','4/18/2012','81 rue Descartes','01.56.88.14.95','oui','oui','ALSH Croix Tienac','Petit','oui','c'),
                              ('','Lamare','Guy','9/18/2004','38 rue Pierre Motte','05.20.52.55.66','non','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Couturier','Noël','12/8/2013','19 cours Franklin Roosevelt','04.06.25.72.65','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Dufour','Patrick','1/24/2010','28 rue des Coudriers','04.96.79.95.64','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Souplet','Sébastien','4/18/2009','69 Chemin des Bateliers','05.54.00.40.08','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Paré','Élise','9/16/2004','6 boulevard de Prague','04.87.64.00.51','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Boivin','Grégoire','1/2/2008','60 Avenue De Marlioz','04.60.22.36.13','non','oui','ALSH Godeau','Grand','oui','sv'),
                              ('','Bisaillon','Denise','6/24/2003','8 Chemin des Bateliers','02.19.79.67.45','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Bonami','Élisabeth','1/27/2002','56 rue Nationale','01.51.36.15.17','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Duffet','Ancelote','8/10/2013','78 place Maurice-Charretier','01.65.89.60.16','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Gagné','Thibaut','8/21/2009','47 rue des six frères Ruellan','03.40.71.50.62','oui','oui','ALSH Godeau','Moyen','oui','sp'),
                              ('','Beaulieu','Marsilius','3/7/2009','74 route de Lyon','02.71.72.42.73','oui','non','ALSH Croix Tienac','Moyen','non',''),
                              ('','Hachée','Anne','5/25/2009','93 rue de Raymond Poincaré','02.17.29.67.24','oui','non','ALSH Murget','Moyen','oui','c'),
                              ('','Barrette','Patrice','1/18/2012','49 Place de la Gare','01.20.20.22.06','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Petit','Melisande','6/13/2005','66 rue Sébastopol','01.83.26.72.89','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Auclair','Zdenek','11/24/2012','33 Rue Marie De Médicis','04.24.44.34.67','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Marier','Didier','10/10/2008','65 Quai des Belges','01.77.60.48.47','oui','oui','ALSH Croix Tienac','Grand','oui','sv'),
                              ('','Gaudreau','Melisande','11/24/2002','3 rue des Dunes','04.23.51.17.42','oui','non','ALSH Godeau','Ados','non',''),
                              ('','Monty','Adrien','5/18/2010','84 rue du Paillle en queue','01.96.77.85.77','oui','oui','ALSH Godeau','Moyen','oui','c'),
                              ('','Lampron','Manville','1/28/2012','49 rue des Coudriers','03.86.68.25.21','oui','oui','ALSH Murget','Petit','oui','c'),
                              ('','Aucoin','Brigitte','8/12/2004','43 boulevard de la Liberation','04.47.13.23.55','oui','oui','ALSH Godeau','Ados','oui','sv'),
                              ('','Bourget','Sylvie','11/6/2010','86 Rue Joseph Vernet','03.32.13.53.25','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Charpentier','Bayard','6/5/2010','76 rue de l Epeule','01.45.54.85.29','oui','oui','ALSH Croix Tienac','Moyen','oui','sp'),
                              ('','Duclos','Harriette','7/7/2007','71 rue de l Epeule','01.84.63.35.61','oui','non','ALSH Godeau','Grand','non',''),
                              ('','Lapresse','Honore','4/4/2003','40 rue de l Epeule','02.77.03.85.83','oui','oui','ALSH Godeau','Ados','oui','sp'),
                              ('','Desroches','Trinette','6/4/2006','38 Place Napoléon','03.88.13.56.53','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Plaisance','Rémy','6/6/2008','4 Rue St Ferréol','03.45.41.76.03','oui','oui','ALSH Murget','Grand','non',''),
                              ('','Lévesque','Gaspar','7/2/2009','5 avenue Ferdinand de Lesseps','04.61.64.65.20','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Chouinard','Dominic','3/11/2003','5 rue Marguerite','01.29.72.99.37','oui','non','ALSH Croix Tienac','Ados','non',''),
                              ('','Miron','Belle','8/8/2009','91 Rue du Limas','04.75.49.14.93','oui','oui','ALSH Godeau','Moyen','oui','sv'),
                              ('','Tétrault','Legget','10/17/2004','23 avenue de Bouvines','01.18.99.61.50','non','non','ALSH Godeau','Ados','non',''),
                              ('','Beaulac','Denis','1/17/2011','56 rue Sébastopol','01.51.29.32.98','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Gousse','Victoire','3/22/2011','78 rue du Clair Bocage','04.25.25.08.75','oui','oui','ALSH Godeau','Petit','oui','sp'),
                              ('','Lesage','Laetitia','9/28/2010','73 rue du Château','02.79.49.66.53','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Raymond','Avent','11/22/2007','97 rue Michel Ange','05.46.84.42.55','oui','oui','ALSH Murget','Grand','non',''),
                              ('','Veronneau','Gallia','6/20/2013','97 place Maurice-Charretier','03.44.08.75.03','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Aubin','Barry','10/26/2007','69 rue des Coudriers','03.97.90.79.23','oui','non','ALSH Godeau','Grand','oui','c'),
                              ('','Guédry','Agate','5/7/2008','2 rue des Coudriers','04.38.98.40.74','oui','oui','ALSH Murget','Grand','non',''),
                              ('','Sirois','Ogier','5/30/2011','68 Rue Bonnet','03.72.73.74.28','oui','non','ALSH Croix Tienac','Petit','non',''),
                              ('','Moïse','Xarles','5/10/2010','84 rue des Dunes','05.99.25.15.58','oui','oui','ALSH Croix Tienac','Moyen','oui','sp'),
                              ('','Marois','Mathilde','4/7/2004','72 Chemin Des Bateliers','05.34.44.28.37','oui','oui','ALSH Godeau','Ados','non',''),
                              ('','Carignan','Chantal','4/29/2010','3 rue de la République','04.64.17.83.20','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Jomphe','Musette','10/17/2012','46 Rue Marie De Médicis','04.10.12.10.97','non','non','ALSH Murget','Petit','non',''),
                              ('','Labrie','Zdenek','10/14/2003','31 Faubourg Saint Honoré','01.15.16.78.08','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Plouffe','Adrienne','3/21/2002','31 rue des Soeurs','01.66.09.53.53','oui','oui','ALSH Godeau','Ados','oui','sv'),
                              ('','Renaud','Durandana','8/6/2009','37 Place du Jeu de Paume','04.63.57.38.95','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Panetier','Arno','6/1/2009','94 rue Léon Dierx','02.17.09.68.02','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Jodoin','Isabelle','5/13/2009','16 Faubourg Saint Honoré','01.30.96.69.50','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Martel','Ogier','7/24/2006','15 Place de la Gare','05.13.68.43.60','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Huard','Pascal','5/30/2011','99 rue de la République','03.92.23.84.84','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Barjavel','Christian','3/7/2011','28 Place de la Madeleine','01.31.39.96.68','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Courtemanche','Bruno','4/29/2011','4 rue Marie de Médicis','05.00.53.88.75','non','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Gendron','Merle','3/30/2010','67 Rue Bonnet','04.09.03.43.35','non','oui','ALSH Godeau','Moyen','oui','sp'),
                              ('','Cousteau','Isaac','1/12/2012','47 rue Nationale','01.16.79.52.29','oui','oui','ALSH Croix Tienac','Petit','oui','c'),
                              ('','Lanctot','Hugh','3/10/2012','90 rue Jean Vilar','03.98.50.15.99','oui','oui','ALSH Murget','Petit','oui','sv'),
                              ('','Fremont','Didier','2/23/2010','6 boulevard d Alsace','01.15.71.56.28','oui','oui','ALSH Godeau','Moyen','oui','sv'),
                              ('','De La Vergne','Valiant','5/11/2002','31 Rue du Palais','01.89.47.83.23','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Goddu','Madelene','10/7/2007','40 Chemin Du Lavarin Sud','04.99.65.10.92','non','non','ALSH Godeau','Grand','oui','sp'),
                              ('','Mailhot','Florismart','6/20/2012','42 rue du Château','02.03.33.18.76','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Garreau','Aymon','11/22/2007','89 rue du Fossé des Tanneurs','04.54.82.58.56','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Lachance','Marguerite','2/28/2013','89 rue de la Hulotais','04.30.74.57.40','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Fortin','Michèle','10/31/2010','25 place Maurice-Charretier','01.23.87.65.29','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Poulin','Durandana','4/2/2006','3 Chemin Des Bateliers','02.19.25.45.40','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Pirouet','Karlotta','12/11/2003','22 rue Bonneterie','03.25.67.41.57','oui','oui','ALSH Godeau','Ados','oui','sv'),
                              ('','Robitaille','Onfroi','5/16/2009','71 Place du Jeu de Paume','01.30.86.45.24','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Morel','Arnou','9/21/2005','12 rue du Clair Bocage','02.40.45.56.87','oui','oui','ALSH Croix Tienac','Grand','oui','sv'),
                              ('','Des Meaux','Liane','2/27/2010','57 avenue de Bouvines','01.73.53.97.32','oui','oui','ALSH Godeau','Moyen','oui','sp'),
                              ('','Laurent','Fleur','6/17/2012','16 rue des lieutemants Thomazo','03.48.77.25.52','oui','non','ALSH Croix Tienac','Petit','non',''),
                              ('','De La Ronde','Roger','5/9/2012','32 boulevard Bryas','01.16.29.60.87','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Paquin','Voleta','5/11/2010','53 rue du Clair Bocage','02.35.83.29.05','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Clément','Parnella','12/29/2006','47 rue du Clair Bocage','02.41.46.14.45','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Bélair','Donat','11/22/2009','46 rue Descartes','03.58.51.38.14','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Grivois','Faye','9/24/2004','54 Chemin Des Bateliers','05.58.09.94.73','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Compagnon','Odelette','12/9/2009','48 rue Gontier-Patin','04.39.97.99.53','oui','non','ALSH Murget','Moyen','non',''),
                              ('','Lamoureux','Franck','10/7/2010','79 Rue de Verdun','04.58.28.85.09','oui','oui','ALSH Murget','Moyen','oui','sp'),
                              ('','Lamy','Magnolia','12/13/2003','6 place Maurice-Charretier','01.46.07.78.00','oui','non','ALSH Godeau','Ados','oui','c'),
                              ('','Grivois','Vedette','4/22/2011','29 rue Pierre De Coubertin','05.45.76.41.54','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Babin','Richard','6/23/2005','70 rue Clement Marot','05.79.11.07.83','oui','oui','ALSH Croix Tienac','Grand','oui','sv'),
                              ('','Auclair','Ermengardi','4/25/2011','5 rue de la Mare aux Carats','04.88.21.84.93','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Guay','Daniel','8/25/2012','55 Rue de la Pompe','04.79.14.40.71','oui','oui','ALSH Godeau','Petit','oui','sv'),
                              ('','Lacroix','Juliette','5/24/2012','40 rue Clement Marot','04.91.11.18.72','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Daviau','Eustache','8/28/2009','72 rue du Faubourg National','05.26.16.18.27','oui','oui','ALSH Godeau','Moyen','oui','sp'),
                              ('','Dodier','Hardouin','3/21/2010','16 Avenue des Tuileries','05.61.14.32.29','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Beaulieu','Peverell','8/1/2008','99 Chemin Des Bateliers','04.53.65.15.31','oui','oui','ALSH Croix Tienac','Grand','oui','sp'),
                              ('','Guilmette','Clothilde','4/11/2004','23 rue des Nations Unies','01.14.83.14.21','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Piedalue','Eustache','3/28/2006','55 avenue de Provence','04.67.24.04.39','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Lebrun','Faustin','1/25/2010','20 rue Isambard','01.37.34.46.89','non','oui','ALSH Godeau','Petit','oui','sv'),
                              ('','Duffet','Latimer','12/3/2003','53 Chemin Challet','03.17.49.57.07','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Soucy','Hilaire','6/13/2009','25 rue Sébastopol','04.36.11.10.23','oui','oui','ALSH Croix Tienac','Moyen','oui','c'),
                              ('','Rancourt','Stéphane','10/14/2006','85 rue Gouin de Beauchesne','02.31.63.65.30','oui','non','ALSH Godeau','Grand','oui','sp'),
                              ('','Sabourin','Chapin','9/25/2013','75 boulevard de la Liberation','04.61.24.72.74','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Fouquet','Honoré','10/5/2007','49 Place du Jeu de Paume','02.02.26.63.90','oui','oui','ALSH Godeau','Grand','oui','c'),
                              ('','Pichette','Honoré','12/28/2013','65 avenue Jean Portalis','03.08.56.44.59','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Doyon','Flordelis','5/12/2007','6 avenue de Provence','03.94.67.27.22','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Croquetaigne','Fabien','11/27/2010','92 Avenue des Pres','01.74.56.24.77','oui','oui','ALSH Godeau','Moyen','oui','sv'),
                              ('','Franchet','Élisabeth','1/12/2010','53 place Maurice-Charretier','01.52.30.64.59','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Martin','Hugh','4/19/2009','83 rue du Président Roosevelt','02.18.81.47.78','oui','non','ALSH Godeau','Moyen','oui','sp'),
                              ('','Sorel','Natalie','6/26/2010','42 rue Pierre De Coubertin','05.88.80.49.50','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Laramée','Martin','8/30/2012','57 rue Gustave Eiffel','02.58.28.61.18','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Richard','Maslin','10/25/2006','56 boulevard de Prague','04.83.03.11.14','oui','oui','ALSH Croix Tienac','Grand','oui','c'),
                              ('','Bérubé','Felicienne','5/3/2011','29 rue Victor Hugo','02.52.37.08.32','oui','non','ALSH Croix Tienac','Petit','oui','sv'),
                              ('','Vaillancourt','Ormazd','4/18/2003','18 rue de l Aigle','03.21.90.03.27','oui','oui','ALSH Godeau','Ados','oui','sv'),
                              ('','Plaisance','Alexis','11/30/2009','19 avenue Jean Portalis','03.80.42.08.49','oui','non','ALSH Murget','Moyen','oui','sv'),
                              ('','Poissonnier','Pansy','11/12/2010','17 avenue Voltaire','04.47.21.38.11','oui','non','ALSH Murget','Moyen','non',''),
                              ('','David','Fleur','10/25/2006','5 rue Michel Ange','05.18.18.70.68','oui','oui','ALSH Godeau','Grand','oui','sp'),
                              ('','Labrie','Alexandrie','9/19/2009','72 rue La Boétie','01.40.59.67.48','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Bourgeois','Fantina','10/9/2011','31 boulevard de Prague','05.89.67.93.85','oui','oui','ALSH Godeau','Petit','oui','sv'),
                              ('','Gaudreau','Honore','9/10/2006','93 rue du Gue Jacquet','02.74.57.33.44','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Rochon','Rule','10/17/2010','41 avenue Voltaire','05.28.50.39.48','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Bérubé','Fusberta','8/6/2004','63 rue Victor Hugo','02.15.44.54.07','oui','oui','ALSH Murget','Ados','non',''),
                              ('','Larocque','Brice','12/26/2006','53 avenue de l Amandier','01.36.27.46.24','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Duffet','Esmeraude','10/15/2011','94 rue de Geneve','03.43.63.03.84','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Théberge','Brie','3/12/2011','59 Avenue De Marlioz','04.52.16.07.00','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Turcotte','Gill','12/26/2010','28 boulevard Alsace','04.42.99.42.89','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Gaillard','Bartlett','6/23/2011','12 rue de la Mare aux Carats','04.61.14.82.34','non','oui','ALSH Murget','Petit','non',''),
                              ('','Lejeune','Melisande','10/16/2011','96 rue des Nations Unies','01.27.18.87.78','oui','oui','ALSH Godeau','Petit','oui','sv'),
                              ('','Varieur','Philip','3/2/2012','47 rue de la Mare aux Carats','01.85.14.22.85','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Bériault','Margaux','9/30/2012','97 rue du Clair Bocage','04.22.72.24.57','oui','oui','ALSH Murget','Petit','oui','c'),
                              ('','Laurent','Dominique','5/20/2002','37 rue Charles Corbeau','01.27.89.58.44','oui','oui','ALSH Croix Tienac','Ados','non',''),
                              ('','Abril','Mirabelle','3/13/2010','72 avenue Jean Portalis','03.40.19.51.05','oui','oui','ALSH Godeau','Moyen','oui','c'),
                              ('','Allain','Rémy','8/14/2010','8 rue Cazade','01.83.88.98.71','oui','oui','ALSH Croix Tienac','Moyen','oui','sv'),
                              ('','Bonnet','Courtland','12/7/2007','40 rue Grande Fusterie','04.15.21.39.09','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Chaussée','Talon','7/27/2013','90 cours Jean Jaures','05.37.05.70.28','oui','non','ALSH Croix Tienac','Petit','oui','sv'),
                              ('','Montminy','Bevis','4/28/2008','44 rue Jean Vilar','03.06.28.17.17','oui','oui','ALSH Croix Tienac','Grand','oui','c'),
                              ('','LaGrande','Nicole','8/29/2013','86 Rue Frédéric Chopin','04.56.34.33.85','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Girard','Sophie','6/20/2009','62 Chemin Des Bateliers','02.89.92.51.97','oui','oui','ALSH Godeau','Moyen','oui','sv'),
                              ('','Lajeunesse','Leone','5/9/2009','37 boulevard Albin Durand','03.19.87.52.55','oui','oui','ALSH Godeau','Moyen','oui','sp'),
                              ('','Chnadonnet','Bayard','3/3/2012','27 Avenue des Tuileries','03.62.46.27.34','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Labonté','Vignette','11/11/2012','38 rue Banaudon','04.27.66.41.31','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Lauzier','Searlait','5/2/2011','35 avenue Ferdinand de Lesseps','04.14.63.14.95','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Bérubé','Cammile','10/20/2011','18 rue du Fossé des Tanneurs','04.35.47.72.34','oui','non','ALSH Godeau','Petit','non',''),
                              ('','Panetier','Fayette','4/16/2008','34 rue de Penthièvre','01.67.61.19.15','oui','oui','ALSH Croix Tienac','Grand','oui','sp'),
                              ('','Lamare','Carolos','11/4/2011','66 avenue Voltaire','04.31.38.77.34','oui','oui','ALSH Godeau','Petit','oui','sv'),
                              ('','Casgrain','Curtis','11/4/2009','98 Rue de la Pompe','04.20.07.64.06','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Latourelle','Paige','9/23/2011','93 Rue Marie De Médicis','04.58.35.40.49','oui','non','ALSH Murget','Petit','oui','sp'),
                              ('','Chouinard','Donat','12/31/2007','41 Boulevard de Normandie','01.85.64.13.91','oui','non','ALSH Godeau','Grand','oui','sp'),
                              ('','Breton','Amabella','11/19/2010','56 rue Charles Corbeau','05.11.71.35.56','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Descoteaux','Armand','3/2/2012','82 cours Franklin Roosevelt','04.64.48.34.05','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Fremont','Durandana','9/16/2009','41 cours Franklin Roosevelt','04.80.86.74.88','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Laisné','Merlin','11/21/2009','47 rue Beauvau','04.78.58.84.90','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Lanoie','Harriette','8/19/2010','82 Chemin Du Lavarin Sud','03.51.06.12.99','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Boucher','Charmaine','11/20/2013','79 Cours Marechal-Joffre','01.24.31.26.95','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Leduc','Pierpont','4/13/2005','77 Rue Frédéric Chopin','02.76.59.50.09','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Sorel','Manville','7/16/2013','28 rue Gouin de Beauchesne','01.53.42.50.88','oui','non','ALSH Croix Tienac','Petit','oui','sp'),
                              ('','Carignan','Madeleine','8/28/2013','33 boulevard Alsace','04.22.17.07.81','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Deblois','Madeleine','6/28/2012','91 Avenue De Marlioz','01.26.99.49.54','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Lanteigne','Agramant','5/30/2011','81 Square de la Couronne','01.38.81.77.24','oui','non','ALSH Murget','Petit','non',''),
                              ('','Poirier','Ganelon','10/26/2010','15 cours Jean Jaures','05.38.92.92.07','oui','oui','ALSH Godeau','Moyen','oui','sv'),
                              ('','Ménard','Blanche','9/28/2009','18 boulevard de la Liberation','04.46.15.65.34','oui','oui','ALSH Croix Tienac','Moyen','non',''),
                              ('','Gagné','Fleur','1/26/2011','58 rue Beauvau','04.09.30.61.81','oui','oui','ALSH Godeau','Petit','oui','sp'),
                              ('','Dagenais','Anton','5/2/2012','41 rue La Boétie','01.57.86.17.75','oui','oui','ALSH Murget','Petit','oui','sv'),
                              ('','Parmentier','Etoile','2/8/2005','33 Rue Bonnet','04.91.04.59.77','oui','oui','ALSH Godeau','Grand','non',''),
                              ('','Berthelette','Marsilius','4/11/2012','92 rue Petite Fusterie','02.70.32.89.84','oui','non','ALSH Croix Tienac','Petit','non',''),
                              ('','Coulombe','Eleanor','11/30/2010','85 rue Charles Corbeau','02.70.39.89.88','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Pelland','Adorlee','10/6/2010','52 rue Banaudon','04.73.81.35.01','oui','oui','ALSH Godeau','Moyen','oui','c'),
                              ('','Lemelin','Melisande','3/1/2005','4 rue du Château','01.21.98.47.43','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Ruais','Audrey','9/12/2013','59 avenue Jules Ferry','01.30.81.62.68','oui','oui','ALSH Godeau','Petit','oui','c'),
                              ('','Lesage','Jacqueline','4/14/2011','97 avenue du Marechal Juin','02.59.91.74.15','oui','non','ALSH Croix Tienac','Petit','non',''),
                              ('','Gosselin','Adrienne','12/9/2009','48 rue du Président Roosevelt','01.23.39.82.53','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Goguen','Fitz','3/15/2007','27 Place Charles de Gaulle','03.92.16.13.76','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Martineau','Curtis','6/18/2009','48 rue de la République','03.11.31.97.70','non','oui','ALSH Godeau','Moyen','non',''),
                              ('','Garceau','Brice','3/13/2009','71 rue Clement Marot','04.37.42.74.46','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Henrichon','Octave','5/24/2005','39 rue Adolphe Wurtz','04.09.88.23.08','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Berthelette','Fleur','8/3/2010','70 boulevard Alsace','01.16.34.97.66','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Arpin','Gill','3/12/2011','51 Place de la Gare','03.69.63.49.04','oui','oui','ALSH Croix Tienac','Petit','oui','c'),
                              ('','Turcotte','Marthe','4/2/2011','2 Chemin Du Lavarin Sud','03.47.98.25.03','oui','oui','ALSH Murget','Petit','non',''),
                              ('','Voisine','Olympia','1/19/2013','22 rue Jean-Monnet','01.45.84.51.13','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Panetier','Vernon','1/2/2011','14 rue des Chaligny','04.28.95.32.99','oui','oui','ALSH Murget','Petit','oui','c'),
                              ('','Barteaux','Tabor','3/1/2012','31 rue Descartes','03.31.67.71.92','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Jetté','Bruno','7/16/2010','13 avenue du Marechal Juin','04.39.98.52.07','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Carrière','Théophile','11/13/2009','12 rue Goya','02.98.52.92.41','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Deniger','Hugues','3/11/2009','70 Boulevard de Normandie','01.02.92.29.74','oui','oui','ALSH Murget','Moyen','non',''),
                              ('','Cadieux','Fletcher','5/15/2012','88 rue du Faubourg National','01.39.18.95.61','oui','non','ALSH Godeau','Petit','non',''),
                              ('','Marois','Julienne','9/26/2012','94 cours Franklin Roosevelt','04.40.94.63.60','non','oui','ALSH Croix Tienac','Petit','oui','sv'),
                              ('','Lefèbvre','Villette','2/20/2008','23 boulevard de Prague','04.31.23.48.31','oui','oui','ALSH Murget','Grand','oui','c'),
                              ('','Lambert','Antoinette','3/5/2009','66 Chemin Challet','05.91.11.12.04','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Blais','Calandre','2/10/2008','1 Avenue des Tuileries','01.39.62.78.16','oui','oui','ALSH Croix Tienac','Grand','non',''),
                              ('','Berger','Jewel','12/3/2008','5 rue des lieutemants Thomazo','03.09.21.01.41','oui','oui','ALSH Murget','Grand','non',''),
                              ('','Duplanty','Ila','6/4/2003','51 rue Cazade','01.52.04.86.58','oui','oui','ALSH Murget','Ados','oui','c'),
                              ('','Parent','Rosemarie','10/10/2003','20 rue Adolphe Wurtz','02.81.78.52.16','oui','non','ALSH Murget','Ados','non',''),
                              ('','Pinneau','Amitee','7/3/2006','53 rue du Fossé des Tanneurs','04.01.41.40.01','oui','oui','ALSH Murget','Grand','non',''),
                              ('','Chastain','Agathe','4/9/2008','23 rue du Fossé des Tanneurs','04.40.41.93.20','oui','oui','ALSH Godeau','Grand','oui','sv'),
                              ('','Bienvenue','Amedee','11/5/2005','23 rue de Penthièvre','04.40.04.41.36','oui','oui','ALSH Murget','Grand','non',''),
                              ('','Brian','Tyson','8/23/2008','95 boulevard de Prague','05.60.57.01.38','oui','oui','ALSH Croix Tienac','Grand','oui','sv'),
                              ('','Bédard','Georgette','7/30/2011','82 rue Descartes','01.39.39.78.29','oui','oui','ALSH Croix Tienac','Petit','non',''),
                              ('','Neufville','Senior','6/22/2008','6 Chemin Challet','05.53.12.53.39','non','non','ALSH Murget','Grand','non',''),
                              ('','Loiselle','Dreux','7/2/2009','17 rue de Groussay','05.74.69.01.74','oui','oui','ALSH Godeau','Moyen','oui','sp'),
                              ('','Rossignol','Desire','2/22/2013','14 boulevard Bryas','03.77.30.97.88','oui','oui','ALSH Godeau','Petit','non',''),
                              ('','Cormier','Jessamine','1/19/2010','83 rue Michel Ange','01.90.75.42.71','oui','oui','ALSH Godeau','Moyen','non',''),
                              ('','Lefèbvre','Fifi','7/19/2012','73 rue du Fossé des Tanneurs','04.41.02.82.50','oui','non','ALSH Croix Tienac','Petit','non',''),
                              ('','Lamare','Capucine','3/29/2008','75 avenue Amandier','05.24.60.34.65','oui','oui','ALSH Murget','Grand','non',''),
                              ('','Charlesbois','Satordi','2/27/2008','25 rue du Général Ailleret','02.32.98.22.93','oui','non','ALSH Murget','Grand','oui','c'),
                              ('','Marcil','Théophile','5/23/2013','57 rue des Lacs','03.04.52.29.87','oui','non','ALSH Godeau','Petit','oui','sp'),
                              ('','Chevrette','Élisabeth','8/21/2005','76 place de Miremont','05.66.30.49.40','oui','non','ALSH Croix Tienac','Grand','oui','sp'),
                              ('','Cavalier','Alexis','7/17/2011','15 place de Garenne','07.51.45.85.74','oui','oui','ALSH Godeau','Petit','oui','c');



CREATE TABLE Planning(
    Id_planning int(2) NOT NULL,
    Nom_du_centre varchar(50) NOT NULL,
    Groupe varchar(20) NOT NULL,
    Activite varchar(50) NOT NULL,
    Date_activite varchar(10) NOT NULL,
    Horraires varchar(5) NOT NULL,
    Lieu varchar(30) NOT NULL,
    Cout_materiel int(5) NOT NULL,
    Cout_alimentation int(5) NOT NULL,
    Cout_transport int(5) NOT NULL,
    Cout_droit_entree int(5) NOT NULL,
    PRIMARY KEY(Id_planning),
    FOREIGN KEY(Nom_du_centre) REFERENCES Centre (Nom_du_centre)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Planning VALUES ('1','ALSH Croix Tienac','Petit','Coloriage','29/10/2018','9h00','Centre','20','0','0','0');
INSERT INTO Planning VALUES ('2','ALSH Croix Tienac','Petit','Projection Film','29/10/2018','13h30','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('3','ALSH Croix Tienac','Petit','Atelier Potterie','30/10/2018','9h00','Centre','500','0','0','0');
INSERT INTO Planning VALUES ('4','ALSH Croix Tienac','Petit','Sieste','30/10/2018','13h30','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('5','ALSH Croix Tienac','Petit','Creation Masque','31/10/2018','9h00','Centre','150','0','0','0');
INSERT INTO Planning VALUES ('6','ALSH Croix Tienac','Petit','Jeu de societe','31/10/2018','13h30','Centre','50','0','0','0');
INSERT INTO Planning VALUES ('7','ALSH Croix Tienac','Petit','Ludotheque','01/11/2018','9h00','Les bates 28100 Dreux','0','0','100','100');
INSERT INTO Planning VALUES ('8','ALSH Croix Tienac','Petit','Jeu exterieur','01/11/2018','13h30','Gymnase curie 28100 Dreux','0','0','0','0');
INSERT INTO Planning VALUES ('9','ALSH Croix Tienac','Petit','Creation puzzle','02/11/2018','9h00','Centre','100','0','0','0');
INSERT INTO Planning VALUES ('10','ALSH Croix Tienac','Petit','Bataille eau','02/11/2018','13h30','Centre','250','0','0','0');


INSERT INTO Planning VALUES ('11','ALSH Croix Tienac','Moyen','Peinture fresque','29/10/2018','9h00','Centre','200','0','0','0');
INSERT INTO Planning VALUES ('12','ALSH Croix Tienac','Moyen','Decoration','29/10/2018','13h30','Centre','250','0','0','0');
INSERT INTO Planning VALUES ('13','ALSH Croix Tienac','Moyen','Parc des expos','30/10/2018','9h00','Palais des sports 28100 Dreux','100','100','200','500');
INSERT INTO Planning VALUES ('14','ALSH Croix Tienac','Moyen','VTT','31/10/2018','13h30','Foret des hauts-buissons','0','0','200','150');
INSERT INTO Planning VALUES ('15','ALSH Croix Tienac','Moyen','Projection Film','31/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('16','ALSH Croix Tienac','Moyen','Maquette','31/10/2018','13h30','Centre','350','0','0','0');
INSERT INTO Planning VALUES ('17','ALSH Croix Tienac','Moyen','Jeu exterieur','01/11/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('18','ALSH Croix Tienac','Moyen','Atelier Potterie','01/11/2018','13h30','Centre','500','0','0','0');
INSERT INTO Planning VALUES ('19','ALSH Croix Tienac','Moyen','Spetacle à Paris','02/11/2018','9h00','Boulogne 92100','0','500','500','500');
INSERT INTO Planning VALUES ('20','ALSH Croix Tienac','Moyen','Fin Maquette','02/11/2018','13h30','Centre','350','0','0','0');

INSERT INTO Planning VALUES ('21','ALSH Croix Tienac','Grand','Karting','29/10/2018','9h00','Chartres 28000','0','0','300','500');
INSERT INTO Planning VALUES ('22','ALSH Croix Tienac','Grand','Decoration','29/10/2018','13h30','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('23','ALSH Croix Tienac','Grand','Jardin Imbermais','30/10/2018','9h00','Imbermais 28450','100','100','50','150');
INSERT INTO Planning VALUES ('24','ALSH Croix Tienac','Grand','Creation T-shirt','30/10/2018','13h30','Centre','50','0','0','0');
INSERT INTO Planning VALUES ('25','ALSH Croix Tienac','Grand','Atelier danse','31/10/2018','9h00','Gymnase curie 28100 Dreux','0','0','0','150');
INSERT INTO Planning VALUES ('26','ALSH Croix Tienac','Grand','Lac Breteuil','31/10/2018','13h30','Breteuil sur iton 37410','0','0','250','100');
INSERT INTO Planning VALUES ('27','ALSH Croix Tienac','Grand','Atelier Potterie','01/11/2018','9h00','Centre','500','0','0','0');
INSERT INTO Planning VALUES ('28','ALSH Croix Tienac','Grand','Creation court-metrage','01/11/2018','13h30','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('29','ALSH Croix Tienac','Grand','Jeu exterieur','02/11/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('30','ALSH Croix Tienac','Grand','Jeu societe','02/11/2018','13h30','Centre','0','0','0','0');

INSERT INTO Planning VALUES ('31','ALSH Croix Tienac','Ados','Visite Louvres','29/10/2018','9h00','Paris 75000','0','800','1000','500');
INSERT INTO Planning VALUES ('32','ALSH Croix Tienac','Ados','Yoga','29/10/2018','13h30','Gymnase curie 28100 Dreux','0','0','0','100');
INSERT INTO Planning VALUES ('33','ALSH Croix Tienac','Ados','Decoration','30/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('34','ALSH Croix Tienac','Ados','Mer des sables','30/10/2018','13h30','Ermenonville 60950','0','1000','600','500');
INSERT INTO Planning VALUES ('35','ALSH Croix Tienac','Ados','Atelier Potterie','31/10/2018','9h00','Centre','500','0','0','0');
INSERT INTO Planning VALUES ('36','ALSH Croix Tienac','Ados','Creation tour eiffel','31/10/2018','13h30','Centre','50','0','0','0');
INSERT INTO Planning VALUES ('37','ALSH Croix Tienac','Ados','VTT','01/11/2018','9h00','Foret des hauts-buissons','0','0','200','150');
INSERT INTO Planning VALUES ('38','ALSH Croix Tienac','Ados','Bataille eau','01/11/2018','13h30','Gymnase curie 28100 Dreux','0','0','0','0');
INSERT INTO Planning VALUES ('39','ALSH Croix Tienac','Ados','Japan expo','02/11/2018','9h00','Villepinte 93420','100','1500','450','600');
INSERT INTO Planning VALUES ('40','ALSH Croix Tienac','Ados','Jeu exterieur','02/11/2018','13h30','Gymnase curie 28100 Dreux','0','0','0','0');


INSERT INTO Planning VALUES ('41','ALSH Murget','Petit','Dessin','29/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('42','ALSH Murget','Petit','Jeu du lynx','29/10/2018','13h30','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('43','ALSH Murget','Petit','Projection film','30/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('44','ALSH Murget','Petit','Jeu exterieur','30/10/2018','13h30','Gymnase murget','0','0','0','0');
INSERT INTO Planning VALUES ('45','ALSH Murget','Petit','Projet sport','31/10/2018','9h00','Gymnase murget','500','200','1500','300');
INSERT INTO Planning VALUES ('46','ALSH Murget','Petit','Bataille eau','31/10/2018','13h30','Gymnase murget','0','0','0','0');
INSERT INTO Planning VALUES ('47','ALSH Murget','Petit','Atelier crepes','01/11/2018','9h00','Centre','150','400','500','0');
INSERT INTO Planning VALUES ('48','ALSH Murget','Petit','Grand gouter','01/11/2018','13h30','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('49','ALSH Murget','Petit','Koh lanta mini','02/11/2018','9h00','Gymnase murget','200','0','0','0');
INSERT INTO Planning VALUES ('50','ALSH Murget','Petit','Atelier danse','02/11/2018','13h30','Centre','0','0','0','500');

INSERT INTO Planning VALUES ('51','ALSH Murget','Moyen','Parcours accrobranche','29/10/2018','9h00','Compteville 28100 Dreux','0','0','200','500');
INSERT INTO Planning VALUES ('52','ALSH Murget','Moyen','Creation maquette','29/10/2018','13h30','Centre','150','0','0','0');
INSERT INTO Planning VALUES ('53','ALSH Murget','Moyen','Projection film','30/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('54','ALSH Murget','Moyen','Atelier peinture','30/10/2018','13h30','Centre','100','0','0','0');
INSERT INTO Planning VALUES ('55','ALSH Murget','Moyen','Decoration','31/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('56','ALSH Murget','Moyen','Canoe cayak','31/10/2018','13h30','Bourges 18000','0','700','1000','500');
INSERT INTO Planning VALUES ('57','ALSH Murget','Moyen','Rafting','01/11/2018','9h00','Bourges 18000','0','500','1000','500');
INSERT INTO Planning VALUES ('58','ALSH Murget','Moyen','Fresque geante','01/11/2018','13h30','Centre','150','0','0','0');
INSERT INTO Planning VALUES ('59','ALSH Murget','Moyen','Mini golf','02/11/2018','9h00','Gymnase murget','0','0','0','0');
INSERT INTO Planning VALUES ('60','ALSH Murget','Moyen','Spectacle','02/11/2018','13h30','Centre','0','0','0','0');

INSERT INTO Planning VALUES ('61','ALSH Murget','Grand','Hydro speed','29/10/2018','9h00','Bourges 18000','0','600','1000','500');
INSERT INTO Planning VALUES ('62','ALSH Murget','Grand','Tennis','29/10/2018','13h30','Gymnase murget','0','0','0','0');
INSERT INTO Planning VALUES ('63','ALSH Murget','Grand','The killer','30/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('64','ALSH Murget','Grand','Court metrage','30/10/2018','13h30','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('65','ALSH Murget','Grand','Atelier crepes','31/10/2018','9h00','Centre','150','400','500','0');
INSERT INTO Planning VALUES ('66','ALSH Murget','Grand','Planche a voiles','31/10/2018','13h30','Ecluzelles 28100','100','100','200','250');
INSERT INTO Planning VALUES ('67','ALSH Murget','Grand','Muse du louvres','01/11/2018','9h00','Paris 75000','0','150','500','500');
INSERT INTO Planning VALUES ('68','ALSH Murget','Grand','Jeu exterieur','01/11/2018','13h30','Gymnase murget','0','0','0','0');
INSERT INTO Planning VALUES ('69','ALSH Murget','Grand','Decoration','02/11/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('70','ALSH Murget','Grand','Spectacle','02/11/2018','13h30','Centre','0','0','0','0');

INSERT INTO Planning VALUES ('71','ALSH Murget','Ados','Karting','29/10/2018','9h00','Evreux 27000','0','0','300','500');
INSERT INTO Planning VALUES ('72','ALSH Murget','Ados','Atelier crepes','29/10/2018','13h30','Centre','150','400','500','0');
INSERT INTO Planning VALUES ('73','ALSH Murget','Ados','Cuisine','30/10/2018','9h00','Centre','50','150','0','0');
INSERT INTO Planning VALUES ('74','ALSH Murget','Ados','Jeu exterieur','30/10/2018','13h30','Gymnase murget','0','0','0','0');
INSERT INTO Planning VALUES ('75','ALSH Murget','Ados','Volley ball','31/10/2018','9h00','Gymnase murget','0','0','0','0');
INSERT INTO Planning VALUES ('76','ALSH Murget','Ados','Maquette football','31/10/2018','13h30','Centre','100','0','0','0');
INSERT INTO Planning VALUES ('77','ALSH Murget','Ados','Jeu de piste','01/11/2018','9h00','Gymnase murget','0','0','0','0');
INSERT INTO Planning VALUES ('78','ALSH Murget','Ados','Bataille eau','01/11/2018','13h30','Gymnase murget','0','0','0','0');
INSERT INTO Planning VALUES ('79','ALSH Murget','Ados','Maquette football','02/11/2018','9h00','Centre','250','0','0','0');
INSERT INTO Planning VALUES ('80','ALSH Murget','Ados','Spectacle','02/11/2018','13h30','Centre','0','0','0','0');


INSERT INTO Planning VALUES ('81','ALSH Godeau','Petit','Chateau de Versailles','29/10/2018','9h00','Versailles 78000','100','500','500','500');
INSERT INTO Planning VALUES ('82','ALSH Godeau','Petit','Chateau de Versailles','29/10/2018','13h30','Versailles 78000','100','500','500','500');
INSERT INTO Planning VALUES ('83','ALSH Godeau','Petit','Decoration','30/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('84','ALSH Godeau','Petit','Piscine','30/10/2018','13h30','Saint remy 27080','0','0','200','100');
INSERT INTO Planning VALUES ('85','ALSH Godeau','Petit','Projection film','31/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('86','ALSH Godeau','Petit','Project nature','31/10/2018','13h30','Foret des hauts-buissons 28100 dreux','0','0','100','100');
INSERT INTO Planning VALUES ('87','ALSH Godeau','Petit','Jeu exterieur','01/11/2018','9h00','Palais des sports 28100 Dreux','0','0','0','0');
INSERT INTO Planning VALUES ('88','ALSH Godeau','Petit','Baton de pluie','01/11/2018','13h30','Centre','200','0','0','0');
INSERT INTO Planning VALUES ('89','ALSH Godeau','Petit','Atelier peinture','02/11/2018','9h00','Centre','250','0','0','0');
INSERT INTO Planning VALUES ('90','ALSH Godeau','Petit','Jeu autonome','02/11/2018','13h30','Centre','0','0','0','0');

INSERT INTO Planning VALUES ('91','ALSH Godeau','Moyen','Chateau de Versailles','29/10/2018','9h00','Versailles 78000','100','500','500','500');
INSERT INTO Planning VALUES ('92','ALSH Godeau','Moyen','Chateau de Versailles','29/10/2018','13h30','Versailles 78000','100','500','500','500');
INSERT INTO Planning VALUES ('93','ALSH Godeau','Moyen','Projection film','30/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('94','ALSH Godeau','Moyen','Decoration','30/10/2018','13h30','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('95','ALSH Godeau','Moyen','Djungle speed','31/10/2018','9h00','Centre','50','0','0','0');
INSERT INTO Planning VALUES ('96','ALSH Godeau','Moyen','Koh Lanta','31/10/2018','13h30','Palais des sports 28100 Dreux','150','0','100','100');
INSERT INTO Planning VALUES ('97','ALSH Godeau','Moyen','Un diner parfait','01/11/2018','9h00','Centre','0','500','0','0');
INSERT INTO Planning VALUES ('98','ALSH Godeau','Moyen','Piscine','01/11/2018','13h30','Saint remy 27080','0','0','200','100');
INSERT INTO Planning VALUES ('99','ALSH Godeau','Moyen','Les Anges','02/11/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('100','ALSH Godeau','Moyen','Man vs wild','02/11/2018','13h30','Palais des sports 28100 Dreux','150','0','100','100');

INSERT INTO Planning VALUES ('101','ALSH Godeau','Grand','Chateau de versailles','29/10/2018','13h30','Versailles 78000','100','500','500','500');
INSERT INTO Planning VALUES ('102','ALSH Godeau','Grand','Chateau de versailles','29/10/2018','9h00','Versailles 78000','100','500','500','500');
INSERT INTO Planning VALUES ('103','ALSH Godeau','Grand','Decoration','30/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('104','ALSH Godeau','Grand','Koh lanta','30/10/2018','13h30','Palais des sports 28100 Dreux','150','0','100','100');
INSERT INTO Planning VALUES ('105','ALSH Godeau','Grand','Tous ensemble','31/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('106','ALSH Godeau','Grand','Jeu exterieur','31/10/2018','13h30','Palais des sports 28100 Dreux','0','0','0','0');
INSERT INTO Planning VALUES ('107','ALSH Godeau','Grand','Les marseillais','01/11/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('108','ALSH Godeau','Grand','Piscine','01/11/2018','13h30','Saint remy 27080','0','0','200','100');
INSERT INTO Planning VALUES ('109','ALSH Godeau','Grand','Pekin express','02/11/2018','9h00','Palais des sports 28100 Dreux','0','0','0','0');
INSERT INTO Planning VALUES ('110','ALSH Godeau','Grand','Jeu autonome','02/11/2018','13h30','Centre','0','0','0','0');

INSERT INTO Planning VALUES ('111','ALSH Godeau','Ados','Chateau de Versailles','29/10/2018','9h00','Versailles 78000','100','500','500','500');
INSERT INTO Planning VALUES ('112','ALSH Godeau','Ados','Chateau de Versailles','29/10/2018','13h30','Versailles 78000','100','500','500','500');
INSERT INTO Planning VALUES ('113','ALSH Godeau','Ados','Jeu autonome','30/10/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('114','ALSH Godeau','Ados','Piscine','30/10/2018','13h30','Saint remy 27080','0','0','200','100');
INSERT INTO Planning VALUES ('115','ALSH Godeau','Ados','Visite Louvres','31/10/2018','9h00','Paris 75000','0','500','500','500');
INSERT INTO Planning VALUES ('116','ALSH Godeau','Ados','Koh lanta','31/10/2018','13h30','Palais des sports 28100 Dreux','150','0','100','100');
INSERT INTO Planning VALUES ('117','ALSH Godeau','Ados','Decoration','01/11/2018','9h00','Centre','0','0','0','0');
INSERT INTO Planning VALUES ('118','ALSH Godeau','Ados','Man vs wild','01/11/2018','13h30','Palais des sports 28100 Dreux','150','0','100','100');
INSERT INTO Planning VALUES ('119','ALSH Godeau','Ados','Visite goulag','02/11/2018','9h00','Poitiers 86000','0','500','500','500');
INSERT INTO Planning VALUES ('120','ALSH Godeau','Ados','Pisicne','02/11/2018','13h30','Poitiers 86000','0','0','200','500');

CREATE TABLE Propose(
  Id_planning int(2) NOT NULL,
  Id_employe  int(2) NOT NULL,
  PRIMARY KEY(Id_planning,Id_employe),
  FOREIGN KEY(Id_planning) REFERENCES Planning(Id_planning),
  FOREIGN KEY(Id_employe)  REFERENCES Employe(Id_employe)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Propose VALUES ('1','20');
INSERT INTO Propose VALUES ('1','24');
INSERT INTO Propose VALUES ('2','20');
INSERT INTO Propose VALUES ('3','20');
INSERT INTO Propose VALUES ('3','24');
INSERT INTO Propose VALUES ('4','24');
INSERT INTO Propose VALUES ('5','20');
INSERT INTO Propose VALUES ('5','24');
INSERT INTO Propose VALUES ('6','24');
INSERT INTO Propose VALUES ('7','20');
INSERT INTO Propose VALUES ('7','24');
INSERT INTO Propose VALUES ('8','20');
INSERT INTO Propose VALUES ('9','20');
INSERT INTO Propose VALUES ('9','24');
INSERT INTO Propose VALUES ('10','20');
INSERT INTO Propose VALUES ('10','24');
INSERT INTO Propose VALUES ('11','22');
INSERT INTO Propose VALUES ('11','26');
INSERT INTO Propose VALUES ('12','26');
INSERT INTO Propose VALUES ('13','22');
INSERT INTO Propose VALUES ('13','26');
INSERT INTO Propose VALUES ('14','22');
INSERT INTO Propose VALUES ('14','26');
INSERT INTO Propose VALUES ('15','26');
INSERT INTO Propose VALUES ('16','22');
INSERT INTO Propose VALUES ('16','26');
INSERT INTO Propose VALUES ('17','22');
INSERT INTO Propose VALUES ('17','26');
INSERT INTO Propose VALUES ('18','22');
INSERT INTO Propose VALUES ('18','26');
INSERT INTO Propose VALUES ('19','22');
INSERT INTO Propose VALUES ('19','26');
INSERT INTO Propose VALUES ('20','22');
INSERT INTO Propose VALUES ('20','26');
INSERT INTO Propose VALUES ('21','23');
INSERT INTO Propose VALUES ('21','25');
INSERT INTO Propose VALUES ('22','23');
INSERT INTO Propose VALUES ('23','23');
INSERT INTO Propose VALUES ('23','25');
INSERT INTO Propose VALUES ('24','23');
INSERT INTO Propose VALUES ('24','25');
INSERT INTO Propose VALUES ('25','23');
INSERT INTO Propose VALUES ('25','25');
INSERT INTO Propose VALUES ('26','23');
INSERT INTO Propose VALUES ('26','25');
INSERT INTO Propose VALUES ('27','23');
INSERT INTO Propose VALUES ('27','25');
INSERT INTO Propose VALUES ('28','25');
INSERT INTO Propose VALUES ('29','25');
INSERT INTO Propose VALUES ('30','23');
INSERT INTO Propose VALUES ('31','21');
INSERT INTO Propose VALUES ('31','22');
INSERT INTO Propose VALUES ('32','21');
INSERT INTO Propose VALUES ('32','22');
INSERT INTO Propose VALUES ('33','21');
INSERT INTO Propose VALUES ('34','21');
INSERT INTO Propose VALUES ('34','22');
INSERT INTO Propose VALUES ('35','21');
INSERT INTO Propose VALUES ('35','22');
INSERT INTO Propose VALUES ('36','21');
INSERT INTO Propose VALUES ('36','22');
INSERT INTO Propose VALUES ('37','21');
INSERT INTO Propose VALUES ('37','22');
INSERT INTO Propose VALUES ('38','21');
INSERT INTO Propose VALUES ('38','22');
INSERT INTO Propose VALUES ('39','21');
INSERT INTO Propose VALUES ('39','22');
INSERT INTO Propose VALUES ('40','22');
INSERT INTO Propose VALUES ('41','2');
INSERT INTO Propose VALUES ('41','6');
INSERT INTO Propose VALUES ('42','2');
INSERT INTO Propose VALUES ('42','6');
INSERT INTO Propose VALUES ('43','2');
INSERT INTO Propose VALUES ('43','6');
INSERT INTO Propose VALUES ('44','2');
INSERT INTO Propose VALUES ('44','6');
INSERT INTO Propose VALUES ('45','2');
INSERT INTO Propose VALUES ('45','6');
INSERT INTO Propose VALUES ('46','2');
INSERT INTO Propose VALUES ('46','6');
INSERT INTO Propose VALUES ('47','2');
INSERT INTO Propose VALUES ('47','6');
INSERT INTO Propose VALUES ('48','2');
INSERT INTO Propose VALUES ('48','6');
INSERT INTO Propose VALUES ('49','2');
INSERT INTO Propose VALUES ('49','6');
INSERT INTO Propose VALUES ('50','2');
INSERT INTO Propose VALUES ('50','6');
INSERT INTO Propose VALUES ('51','4');
INSERT INTO Propose VALUES ('51','7');
INSERT INTO Propose VALUES ('52','4');
INSERT INTO Propose VALUES ('52','7');
INSERT INTO Propose VALUES ('53','4');
INSERT INTO Propose VALUES ('54','4');
INSERT INTO Propose VALUES ('54','5');
INSERT INTO Propose VALUES ('55','4');
INSERT INTO Propose VALUES ('56','4');
INSERT INTO Propose VALUES ('56','7');
INSERT INTO Propose VALUES ('57','4');
INSERT INTO Propose VALUES ('57','5');
INSERT INTO Propose VALUES ('58','4');
INSERT INTO Propose VALUES ('58','7');
INSERT INTO Propose VALUES ('59','4');
INSERT INTO Propose VALUES ('59','7');
INSERT INTO Propose VALUES ('60','4');
INSERT INTO Propose VALUES ('60','5');
INSERT INTO Propose VALUES ('61','5');
INSERT INTO Propose VALUES ('62','5');
INSERT INTO Propose VALUES ('63','5');
INSERT INTO Propose VALUES ('64','5');
INSERT INTO Propose VALUES ('65','5');
INSERT INTO Propose VALUES ('66','5');
INSERT INTO Propose VALUES ('67','5');
INSERT INTO Propose VALUES ('68','5');
INSERT INTO Propose VALUES ('69','5');
INSERT INTO Propose VALUES ('70','5');
INSERT INTO Propose VALUES ('71','3');
INSERT INTO Propose VALUES ('72','3');
INSERT INTO Propose VALUES ('73','3');
INSERT INTO Propose VALUES ('74','3');
INSERT INTO Propose VALUES ('75','3');
INSERT INTO Propose VALUES ('76','3');
INSERT INTO Propose VALUES ('77','3');
INSERT INTO Propose VALUES ('78','3');
INSERT INTO Propose VALUES ('79','3');
INSERT INTO Propose VALUES ('80','3');
INSERT INTO Propose VALUES ('81','13');
INSERT INTO Propose VALUES ('81','17');
INSERT INTO Propose VALUES ('82','13');
INSERT INTO Propose VALUES ('82','17');
INSERT INTO Propose VALUES ('83','13');
INSERT INTO Propose VALUES ('83','17');
INSERT INTO Propose VALUES ('84','13');
INSERT INTO Propose VALUES ('84','17');
INSERT INTO Propose VALUES ('85','13');
INSERT INTO Propose VALUES ('85','17');
INSERT INTO Propose VALUES ('86','13');
INSERT INTO Propose VALUES ('86','17');
INSERT INTO Propose VALUES ('87','13');
INSERT INTO Propose VALUES ('87','17');
INSERT INTO Propose VALUES ('88','13');
INSERT INTO Propose VALUES ('88','17');
INSERT INTO Propose VALUES ('89','13');
INSERT INTO Propose VALUES ('89','17');
INSERT INTO Propose VALUES ('90','13');
INSERT INTO Propose VALUES ('90','17');
INSERT INTO Propose VALUES ('91','11');
INSERT INTO Propose VALUES ('91','12');
INSERT INTO Propose VALUES ('92','11');
INSERT INTO Propose VALUES ('92','12');
INSERT INTO Propose VALUES ('93','11');
INSERT INTO Propose VALUES ('93','12');
INSERT INTO Propose VALUES ('94','11');
INSERT INTO Propose VALUES ('94','12');
INSERT INTO Propose VALUES ('95','11');
INSERT INTO Propose VALUES ('95','12');
INSERT INTO Propose VALUES ('96','11');
INSERT INTO Propose VALUES ('96','12');
INSERT INTO Propose VALUES ('97','11');
INSERT INTO Propose VALUES ('97','12');
INSERT INTO Propose VALUES ('98','11');
INSERT INTO Propose VALUES ('98','12');
INSERT INTO Propose VALUES ('99','11');
INSERT INTO Propose VALUES ('99','12');
INSERT INTO Propose VALUES ('100','11');
INSERT INTO Propose VALUES ('100','12');
INSERT INTO Propose VALUES ('101','10');
INSERT INTO Propose VALUES ('101','14');
INSERT INTO Propose VALUES ('102','10');
INSERT INTO Propose VALUES ('102','14');
INSERT INTO Propose VALUES ('103','10');
INSERT INTO Propose VALUES ('103','14');
INSERT INTO Propose VALUES ('104','10');
INSERT INTO Propose VALUES ('104','14');
INSERT INTO Propose VALUES ('105','10');
INSERT INTO Propose VALUES ('105','14');
INSERT INTO Propose VALUES ('106','10');
INSERT INTO Propose VALUES ('106','14');
INSERT INTO Propose VALUES ('107','10');
INSERT INTO Propose VALUES ('107','14');
INSERT INTO Propose VALUES ('108','10');
INSERT INTO Propose VALUES ('108','14');
INSERT INTO Propose VALUES ('109','10');
INSERT INTO Propose VALUES ('109','14');
INSERT INTO Propose VALUES ('110','10');
INSERT INTO Propose VALUES ('110','14');
INSERT INTO Propose VALUES ('111','15');
INSERT INTO Propose VALUES ('111','16');
INSERT INTO Propose VALUES ('112','15');
INSERT INTO Propose VALUES ('112','16');
INSERT INTO Propose VALUES ('113','15');
INSERT INTO Propose VALUES ('113','16');
INSERT INTO Propose VALUES ('114','15');
INSERT INTO Propose VALUES ('114','16');
INSERT INTO Propose VALUES ('115','15');
INSERT INTO Propose VALUES ('115','16');
INSERT INTO Propose VALUES ('116','15');
INSERT INTO Propose VALUES ('116','16');
INSERT INTO Propose VALUES ('117','15');
INSERT INTO Propose VALUES ('117','16');
INSERT INTO Propose VALUES ('118','15');
INSERT INTO Propose VALUES ('118','16');
INSERT INTO Propose VALUES ('119','15');
INSERT INTO Propose VALUES ('119','16');
INSERT INTO Propose VALUES ('120','15');
INSERT INTO Propose VALUES ('120','16');



CREATE TABLE Budget(
    Nom_du_centre varchar(50) NOT NULL,
    Materiel int(5) NOT NULL,
    Alimentation int(5) NOT NULL,
    Transport int(5) NOT NULL,
    Droit_entree int(5) NOT NULL,
    PRIMARY KEY(Nom_du_centre),
    FOREIGN KEY(Nom_du_centre) REFERENCES Centre(Nom_du_centre)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Budget VALUES ('ALSH Croix Tienac','4000','25000','4500','9000');
INSERT INTO Budget VALUES ('ALSH Godeau','4500','25000','6000','8500');
INSERT INTO Budget VALUES ('ALSH Murget','2500','25000','5500','9000');

CREATE VIEW titulaire_BFD AS SELECT * FROM Employe WHERE Employe.Diplome = 'BFD';/*Titulaire du BFD*/
CREATE VIEW enfant_par_groupe_et_centre AS SELECT Enfant.Nom_du_centre,Enfant.Groupe,COUNT(*) AS 'nombres_enfants_inscrits' FROM Enfant GROUP BY Enfant.Nom_du_centre,Enfant.Groupe;  /*Compte le nombre d'enfants par groupe/centre*/
CREATE VIEW moyenne_enfants_par_salles AS SELECT Centre.Nom_du_centre, (Centre.Effectif / Centre.Nombre_salles) AS 'nombre_enfants_par_salles' FROM Centre;  /*Affiche la moyenne d'enfants par salle de chaque centre*/
CREATE VIEW budget_activite_sejour AS SELECT Planning.Nom_du_centre, SUM(Planning.Cout_materiel) AS 'budget_materiel_depense',SUM(Planning.Cout_alimentation)'budget_alimentation_depense',SUM(Planning.Cout_transport) 'budget_transport_depense',SUM(Planning.Cout_droit_entree) 'budget_droit_entree_depense' FROM Planning GROUP BY Planning.Nom_du_centre; /*Affiche chaque budget activite depense sur le sejour*/
CREATE VIEW budget_cantine_depense_sejour AS SELECT budget_activite_sejour.Nom_du_centre,(budget_activite_sejour.budget_alimentation_depense + Cantine.Cout_vacance) AS 'budget_total_cantine_sejour' FROM budget_activite_sejour,Cantine GROUP BY budget_activite_sejour.Nom_du_centre; /*Budget cantine depense sur le sejour*/
CREATE VIEW budget_total_depense_sejour AS SELECT budget_activite_sejour.Nom_du_centre,(budget_activite_sejour.budget_materiel_depense + budget_activite_sejour.budget_transport_depense + budget_activite_sejour.budget_droit_entree_depense + budget_cantine_depense_sejour.budget_total_cantine_sejour) AS 'budget_total_depense_sejour' FROM budget_activite_sejour,budget_cantine_depense_sejour GROUP BY budget_activite_sejour.Nom_du_centre; /*Budget total depense sur le sejour*/



CREATE USER 'employe'@'localhost' IDENTIFIED BY 'projet';

GRANT SELECT,
      UPDATE
ON Centre_de_loisir.Budget
TO 'employe'@'localhost';

GRANT SELECT,
      UPDATE
ON Centre_de_loisir.Cantine
TO 'employe'@'localhost';

GRANT SELECT,
      UPDATE
ON Centre_de_loisir.Centre
TO 'employe'@'localhost';

GRANT SELECT,
	    INSERT,
      UPDATE,
      DELETE
ON Centre_de_loisir.Employe
TO 'employe'@'localhost';

GRANT SELECT,
	    INSERT,
      UPDATE,
      DELETE
ON Centre_de_loisir.Enfant
TO 'employe'@'localhost';

GRANT SELECT,
	    INSERT,
      UPDATE,
      DELETE
ON Centre_de_loisir.Planning
TO 'employe'@'localhost';

GRANT SELECT,
	    INSERT,
      UPDATE,
      DELETE
ON Centre_de_loisir.Propose
TO 'employe'@'localhost';


CREATE USER 'parent'@'localhost' IDENTIFIED BY 'projet';

GRANT SELECT
ON Centre_de_loisir.Centre
TO 'parent'@'localhost';

GRANT SELECT(Nom_du_centre,Prenom,Nom,Metier)
ON Centre_de_loisir.Employe
TO 'parent'@'localhost';

GRANT SELECT
ON Centre_de_loisir.Planning
TO 'parent'@'localhost';
