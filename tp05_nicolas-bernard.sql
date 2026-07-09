/* a. Listez les articles dans l’ordre alphabétique des désignations */
SELECT * FROM ARTICLE GROUP BY DESIGNATION;

/* b. Listez les articles dans l’ordre des prix du plus élevé au moins élevé */
SELECT * FROM ARTICLE GROUP BY PRIX DESC;

/* c. Listez tous les articles qui sont des « boulons » et triez les résultats par ordre de prix ascendant */
SELECT * FROM ARTICLE WHERE DESIGNATION LIKE ("%boulon%") GROUP BY PRIX ASC;

/* d. Listez tous les articles dont la désignation contient le mot « sachet ». */
SELECT * FROM ARTICLE WHERE DESIGNATION LIKE ("%sachet%");

/* d. Listez tous les articles dont la désignation contient le mot « sachet ». */
SELECT * FROM ARTICLE WHERE DESIGNATION LIKE LOWER("%sachet%");

/* f.Listez les articles avec les informations fournisseur correspondantes. 
Les résultats doivent être triées dans l’ordre alphabétique des fournisseurs
 et par article du prix le plus élevé au moins élevé. */
SELECT * FROM ARTICLE INNER JOIN FOURNISSEUR WHERE ID_FOU=FOURNISSEUR.ID ORDER BY FOURNISSEUR.NOM, ARTICLE.PRIX DESC;

/* Listez les articles de la société « Dubois & Fils » */
SELECT * FROM ARTICLE INNER JOIN FOURNISSEUR WHERE ID_FOU=FOURNISSEUR.ID AND FOURNISSEUR.NOM IN ("Dubois & Fils");

/* h. Calculez la moyenne des prix des articles de la société « Dubois & Fils » */
SELECT NOM, AVG(PRIX) AS "Moyenne des prix" FROM FOURNISSEUR INNER JOIN ARTICLE WHERE ID_FOU = FOURNISSEUR.ID AND FOURNISSEUR.NOM = "Dubois & Fils";

/* i. Calculez la moyenne des prix des articles de chaque fournisseur */
SELECT NOM, AVG(PRIX) AS "Moyenne des prix" FROM FOURNISSEUR INNER JOIN ARTICLE WHERE ID_FOU = FOURNISSEUR.ID GROUP BY FOURNISSEUR.NOM;

/* j. Sélectionnez tous les bons de commandes émis entre le 01/03/2019 et le 05/04/2019 à 12h00. */
SELECT * FROM BON WHERE DATE_CMDE IN("2019/03/01", "2019/04/05 12:00:00");

/* k. Sélectionnez les divers bons de commande qui contiennent des boulons */
SELECT * FROM BON   INNER JOIN COMPO ON COMPO.ID_BON = BON.ID
                    INNER JOIN ARTICLE ON COMPO.ID_ART = ARTICLE.ID
                    WHERE ARTICLE.DESIGNATION LIKE "%boulon%";

/* l. Sélectionnez les divers bons de commande qui contiennent des boulons avec le nom du fournisseur associé. */
SELECT DISTINCT BON.*, FOURNISSEUR.NOM
FROM BON
INNER JOIN fournisseur
ON BON.ID_FOU = FOURNISSEUR.ID
INNER JOIN compo
ON COMPO.ID_BON = BON.ID
INNER JOIN article
ON COMPO.ID_ART = ARTICLE.ID
WHERE ARTICLE.DESIGNATION LIKE '%boulon%';

/* m. Calculez le prix total de chaque bon de commande */
SELECT BON.*, SUM(ARTICLE.PRIX) AS Coût total FROM BON
    INNER JOIN COMPO ON COMPO.ID_BON = BON.ID
    INNER JOIN ARTICLE ON COMPO.ID_ART = ARTICLE.ID
    GROUP BY BON.ID;

/* n. Comptez le nombre d’articles de chaque bon de commande */
SELECT BON.*, SUM(COMPO.QTE) AS "Nombre d'articles" FROM BON
    INNER JOIN COMPO ON COMPO.ID_BON = BON.ID
    GROUP BY BON.ID;

/* o. Affichez les numéros de bons de commande qui contiennent plus de 25 articles
 et affichez le nombre d’articles de chacun de ces bons de commande */
SELECT BON.NUMERO AS "Bon N°", SUM(COMPO.QTE) AS "Nombre d'articles" FROM BON
    INNER JOIN COMPO ON COMPO.ID_BON = BON.ID
    GROUP BY BON.ID
    HAVING SUM(COMPO.QTE) >=25;

/* p. Calculez le coût total des commandes effectuées sur le mois d’avril */
SELECT BON.*, SUM(ARTICLE.PRIX * COMPO.QTE) FROM BON
    INNER JOIN COMPO ON COMPO.ID_BON = BON.ID
    INNER JOIN ARTICLE ON COMPO.ID_ART = ARTICLE.ID
    GROUP BY BON.ID;


