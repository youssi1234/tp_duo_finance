CREATE DATABASE finances;
use finances;
CREATE TABLE depenses (
    id_dep INT AUTO_INCREMENT PRIMARY KEY,
    id_depense INT,
    id_depense_admin INT

);
CREATE TABLE recettes (
    id_recette INT AUTO_INCREMENT PRIMARY KEY,
    id_Recette_Source INT,
    id_Recette_Finance INT,
    id_Recette_Douaniere INT,
    id_Recette_Non_Fiscale INT,
    id_dons INT
);
CREATE TABLE recette_source (
    id_Recette_Source INT AUTO_INCREMENT PRIMARY KEY,
    impots INT,
    douanes INT,
    rct_non_fiscale INT,
    dons INT
);

CREATE TABLE recette_finance (
    id_Recette_Finance INT AUTO_INCREMENT PRIMARY KEY,
    Nature_impot VARCHAR(250),
    LFR_2024 INT,
    LFR_2025 INT
);

CREATE TABLE recette_douanieres (
    id_Recette_Douaniere INT AUTO_INCREMENT PRIMARY KEY,
    Nature_droit_taxe VARCHAR(250),
    LFR_2024 INT,
    LFR_2025 INT
);

CREATE TABLE recette_non_fiscale (
    id_Recette_Non_Fiscale INT AUTO_INCREMENT PRIMARY KEY,
    recette_non_fiscale VARCHAR(250),
    LFR_2024 INT,
    LFR_2025 INT
);

CREATE TABLE dons (
    id_dons INT AUTO_INCREMENT PRIMARY KEY,
    Dons VARCHAR(50),
    LFR_2024 INT,
    LFR_2025 INT
);

CREATE TABLE depense_nature_economique (
    id_depense INT AUTO_INCREMENT PRIMARY KEY,
    Rubriques VARCHAR(50),
    LFR_2024 INT,
    LFR_2025 INT
);

CREATE TABLE depense_rattachement_admin (
    id_depense_admin INT AUTO_INCREMENT PRIMARY KEY,
    Institution_Ministere VARCHAR(50),
    LFR_2024 INT,
    LFR_2025 INT
);

CREATE TABLE deficit_budgetaire (
    id_deficit INT AUTO_INCREMENT PRIMARY KEY,
    deficits VARCHAR(50),
    LFR_2024 INT,
    LFR_2025 INT
);

INSERT INTO recette_source (impots, douanes, rct_non_fiscale, dons) VALUES
(4366.0, 3780.0 , 0, 1086.3),
(5628.4, 4368.0, 0, 2476.6);

INSERT INTO recette_finance (Nature_impot, LFR_2024, LFR_2025) VALUES
('Impôt sur les revenus', 1179.0, 1411.4),
('Impôt sur les revenus Salariaux et Assimilés', 848.2, 889.9),
('Impôt sur les revenus des Capitaux Mobiliers', 78.2, 93.7),
('Impôt sur les plus-values Immobilières', 14.0, 18.3),
('Impôt Synthétique', 132.3, 164.7),
('Droit d’Enregistrement', 49.0, 62.8),
('TVA (y compris Taxe sur les transactions Mobiles)', 1400.2, 1742.2),
('Impôt sur les marchés Publics', 148.7, 250.0),
('Droit d’Accise (y compris Taxe environnementale)', 754.1, 955.4),
('Taxes sur les Assurances', 17.2, 20.6),
('Droit de Timbres', 14.1, 16.8),
('Autres', 1.5, 2.7);

INSERT INTO recette_douanieres (Nature_droit_taxe, LFR_2024, LFR_2025) VALUES
('Droit de douane', 847.5, 1010.7),
('TVA à l’importation', 1768.3, 2148.3),
('Taxe sur les produits pétroliers', 308.0, 326.0),
('TVA sur les produits pétroliers', 842.8, 879.0),
('Droit de navigation', 1.2, 1.9),
('Autres', 0.2, 0.1);

INSERT INTO recette_non_fiscale (recette_non_fiscale, LFR_2024, LFR_2025) VALUES
('Dividendes', 89.5, 120.2),
('Productions immobilières financières', 0.5, 2.1),
('Redevance de pêche', 10, 15.0),
('Redevance minières', 84.9, 331.2),
('Autres redevance', 9.7, 10),
('Produits des activités et autres', 11.1, 8.1),
('Autres', 140.1, 5.2);

INSERT INTO dons (Dons, LFR_2024, LFR_2025) VALUES
('Courants', 0.33, 1.0),
('Capital', 1086.0, 2445.6);

INSERT INTO depense_nature_economique (Rubriques, LFR_2024, LFR_2025) VALUES
('Intérêts de la dette', 672.0, 756.5),
('Dépenses courantes de solde (hors indemnités)', 3814.5, 3846.4),
('Dépenses courantes hors solde', 3069.0, 2304.3),
('Indemnités', 244.8, 244.8),
('Biens/Services', 573.2, 504.7),
('Transferts et subventions', 2251.0, 1554.8),
('Dépenses d’investissement', 4836.8, 8537.2),
('PIP sur financement interne', 1262.5, 2377.3),
('PIP sur financement externe', 3574.3, 6159.9),
('Autres opérations nettes du trésor', 390.2, 860.6);

INSERT INTO depense_rattachement_admin (Institution_Ministere, LFR_2024, LFR_2025) VALUES
('Présidence de la République', 177.1, 224.7),
('Sénat', 22.1, 21.3),
('Assemblée Nationale', 87.4, 85.9),
('Haute Cour Constitutionnelle', 11.9, 9.3),
('Primature', 278.3, 339.9),
('Conseil du Fampihavanana Malagasy', 6.7, 6.3),
('Commission Électorale Nationale Indépendante', 113.3, 16.4),
('Ministère de la Défense Nationale', 557.0, 543.2),
('Ministère des Affaires Étrangères', 99.2, 104.7),
('Ministère de la Justice', 199.6, 219.8),
('Ministère de l’Intérieur', 150.2, 134.7),
('Ministère de l’Économie et des Finances', 2848.0, 2332.7),
('Ministère de la Sécurité Publique', 228.3, 229.2),
('Ministère de l’Industrialisation et du Commerce', 113.2, 119.6),
('Ministère de la Décentralisation et de l’Aménagement du Territoire', 356.8, 568.1),
('Ministère du Travail, de l’Emploi et de la Fonction Publique', 31.8, 33.7),
('Ministère du Tourisme et de l’Artisanat', 19.2, 43.9),
('Ministère de l’Enseignement Supérieur et de la Recherche Scientifique', 284.2, 285.6),
('Ministère de l’Environnement et du Développement Durable', 94.4, 188.8),
('Ministère de l’Éducation Nationale', 1532.8, 1562.0);
('Ministère des Transports et de la Météorologie', 63.9, 216.3),
('Ministère de la Santé Publique', 716.6, 921.0),
('Ministère de la Communication et de la Culture', 38.4, 32.1),
('Ministère des Travaux Publics', 1217.3, 2327.5),
('Ministère des Mines et des Ressources Strategiques', 18.3, 18.1),
('Ministère de l’Énergie et des Hydrocarbures', 407.9, 1332.0),
('Ministère de l’Eau, de l’Assainissement et de l’Hygiène', 306.1, 600.2),
('Ministère de l’Agriculture et de l’Élevage', 469.8, 795.5),
('Ministère de la Pêche et de l’Économie Bleue', 29.9, 28.8),
('Ministère de l’Enseignement Technique et de la Formation Professionnelle', 103.7, 94.8),
('Ministère de l’Artisanat et des Métiers', 2.5, NULL),
('Ministère du Développement Numérique, des Postes et des Télécommunications', 8.4, 8.8),
('Ministère de la Population et des Solidarités', 99.1, 193.4),
('Ministère de la Jeunesse et des Sports', 40.5, 58.1),
('Secretariat d’État en charge des Nouvelles Villes et de l’Habitat', 247.1, 138.8),
('Ministère délégué chargé de la Gendarmerie', 414.8, 446.4),
('Haut Conseil pour la Défense de la Démocratie et de l’État de Droit (HCDDED)', 2.1, 2.0),
('Commission Nationale Indépendante des Droits de l’Homme (CNIDH)', 2.1, 2.0),
('Haute Cour de Justice', 3.7, 3.5);


