DROP DATABASE IF EXISTS groupetic;

CREATE DATABASE IF NOT EXISTS groupetic;

USE groupetic;

-- Creating table
CREATE TABLE IF NOT EXISTS Ressources(
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    content LONGBLOB NOT NULL,
    isRestreinted TINYINT(1),
    isValide TINYINT(1),
    nb_vue INT,
    date_created DATETIME,
    date_edited DATETIME,
    fk_categorie INT NOT NULL,
    fk_type_ressources INT NOT NULL,
    fk_user_created INT,
    fk_user_edited INT,
    fk_relation INT,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Categorie(
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (nom)
);

CREATE TABLE IF NOT EXISTS Type_Ressources(
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (nom)
);

CREATE TABLE IF NOT EXISTS Commentaires(
    id INT NOT NULL AUTO_INCREMENT,
    date_created DATETIME NOT NULL,
    fk_ressources INT NOT NULL,
    PRIMARY KEY (id)
);

-- Added FK
ALTER TABLE
    Ressources
ADD
    FOREIGN KEY (fk_categorie) REFERENCES Categorie(id);

ALTER TABLE
    Ressources
ADD
    FOREIGN KEY (fk_type_ressources) REFERENCES Type_Ressources(id);

ALTER TABLE
    Commentaires
ADD
    FOREIGN KEY (fk_ressources) REFERENCES Ressources(id);

-- Started to insert Data
-- Insert Categorie
INSERT
    IGNORE INTO Categorie (nom) VALUE ("Santé");
INSERT
    IGNORE INTO Categorie (nom) VALUE ("Bien Etre");
INSERT
    IGNORE INTO Categorie (nom) VALUE ("Monde professionnel");
-- Insert Type_Ressources
INSERT
    IGNORE INTO Type_Ressources (nom) VALUE ("Famille");
INSERT
    IGNORE INTO Type_Ressources (nom) VALUE ("Soi");
INSERT
    IGNORE INTO Type_Ressources (nom) VALUE ("Video");
INSERT
    IGNORE INTO Type_Ressources (nom) VALUE ("PDF");

-- Insert Ressources
INSERT
    IGNORE INTO Ressources (
        nom,
        content,
        isRestreinted,
        isValide,
        nb_vue,
        date_created,
        fk_categorie,
        fk_type_ressources
    ) VALUE (
        "Reconnaître ses émotions",
        "L’objectif de cet exercice est de reconnaître les émotions sur soi. Pour ce faire, nous noterons dans un petit cahier prévu à cet effet, à des moments prédéfinis de la journée, comment nous nous sentons émotionnellement. Quelle émotion nous habite ? Cette émotion est-elle positive ou négative ? Avec quelle force ? Quel a été le facteur déclencheur ?
Nous répèterons la démarche durant une semaine.
Après une semaine, reprenons nos notes et identifions avec un marqueur les émotions que nous ressentons le plus souvent, si elles sont positives ou négatives et quel type de facteur déclencheur est observé le plus souvent.
Pour conclure, demandons-nous si nos émotions auraient pu être différentes et si la situation en aurait été changée.",
        0,
        1,
        0,
        '2023-02-17 10:45:00',
        1,
        2
    );

INSERT
    IGNORE INTO Ressources (
        nom,
        content,
        isRestreinted,
        isValide,
        nb_vue,
        date_created,
        fk_categorie,
        fk_type_ressources
    ) VALUE (
        "Emission ARTE : Travail | Travail, Salaire, Profit",
        "https://www.youtube.com/watch?v=Dpzv8H16R-Q",
        0,
        1,
        0,
        '2023-02-18 10:45:00',
        3,
        3
    );


