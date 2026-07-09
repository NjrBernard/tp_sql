/* Selectionner tous les articles */
SELECT * FROM ARTICLE;

/* Selectionner les références et les designations des articles dont le prix est supérieur à 2€ */
SELECT REF, DESIGNATION FROM ARTICLE WHERE PRIX > 2;

/*Lister les articles dont le prix est compris entre 2 et 6.25€ avec opérateurs de comparaison*/
SELECT * FROM ARTICLE WHERE PRIX >= 2 AND PRIX <= 6.25;

/*Lister les articles dont le prix est compris entre 2 et 6.25€ avec BETWEEN*/
SELECT * FROM ARTICLE WHERE PRIX BETWEEN 2 AND 6.25;

/* Lister les articles Francaise d'Imports, prix non compris entre 2 et 6.25€, dans l'ordre décroissant */
SELECT * FROM ARTICLE WHERE PRIX NOT BETWEEN 2 AND 6.25 AND WHERE ID_FOU = 1 ORDER BY PRIX DESC; 

/* Lister les articles dont les fournisseurs sont Française d'Imports et Dubois & Fils */
SELECT * FROM ARTICLE WHERE ID_FOU != 2;

/* Lister les articles dont les fournisseurs sont Française d'Imports et Dubois & Fils avec IN */
SELECT * FROM ARTICLE WHERE ID_FOU IN (1, 3);

/* Lister les articles dont les fournisseurs sont Française d'Imports et Dubois & Fils avec NOT IN */
SELECT * FROM ARTICLE WHERE ID_FOU NOT IN (1, 3);

/* Lister tous les bons de commande dont la date est comprise entre le 01/02/2019 et le 30/04/2019 */
SELECT * FROM BON WHERE DATE_CMDE BETWEEN '2019-02-01' AND '2019-04-30';

