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
