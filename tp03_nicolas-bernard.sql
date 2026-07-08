
/* Ajout des fournisseurs dans la table fournisseur */

INSERT INTO fournisseur (nom) values ("Française d'Imports");
INSERT INTO fournisseur (nom) values ("FDM SA");
INSERT INTO fournisseur (nom) values ("Dubois & Fils");

/* Ajout des articles dans la table article */

INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) values ("A01", "Perceuse P1", 74,99, 1);
INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) values ("F01", "Boulon laiton 4 x 40 mm (sachet de 10)", 2.25, 2);
INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) values ("F02", "Boulon laiton 5 x 40 mm (sachet de 10)", 4.45, 2);
INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) values ("D01", "Boulon laiton 5 x 40 mm (sachet de 10)", 4.40, 3);
INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) values ("A02", "Meuleuse 125 mm", 37.85, 1);
INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) values ("D03", "Boulon acier zingué 4 x 40 mm (sachet de 10)", 1.80, 3);
INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) values ("A03", "Perceuse à colonne", 185.25, 1);
INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) values ("D04", "Coffret mêches à bois", 12.25, 3);
INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) values ("F03", "Coffret mêches plates", 6.25, 2);
INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) values ("F04", "Fraises d'encastrement", 8.14, 2);

/* Création d'un bon de commande */

INSERT INTO bon (NUMERO, ID_FOU, DELAI) values (1234, 1, 3);

/* Affectation des articles au bon de commande, avec l'ID de l'article et non sa référence */

INSERT INTO compo (ID_ART, ID_BON, QTE) values (1, 1, 3);
INSERT INTO compo (ID_ART, ID_BON, QTE) values (5, 1, 4);
INSERT INTO compo (ID_ART, ID_BON, QTE) values (7, 1, 1);