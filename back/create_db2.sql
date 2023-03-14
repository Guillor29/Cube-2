DROP DATABASE IF EXISTS groupetic2;

CREATE DATABASE IF NOT EXISTS groupetic2;

USE groupetic2;

-- Creating table
CREATE TABLE IF NOT EXISTS Ressources(
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    imageBanner VARCHAR(255) NOT NULL, -- lien web vers une image
    content TEXT NOT NULL,
    isRestreinted TINYINT,
    isValide TINYINT,
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
    message VARCHAR(255) NOT NULL,
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
    IGNORE INTO Categorie (nom) VALUE ("Bien Etre"); -- id 2
INSERT
    IGNORE INTO Categorie (nom) VALUE ("Monde professionnel"); -- id 3

-- Insert Type_Ressources
INSERT
    IGNORE INTO Type_Ressources (nom) VALUE ("Famille");
INSERT
    IGNORE INTO Type_Ressources (nom) VALUE ("Soi"); -- id 2
INSERT
    IGNORE INTO Type_Ressources (nom) VALUE ("Video"); -- id 3
INSERT
    IGNORE INTO Type_Ressources (nom) VALUE ("PDF");

-- Insert Ressources
INSERT
    IGNORE INTO Ressources (
        nom,
        imageBanner,
        content,
        isRestreinted,
        isValide,
        nb_vue,
        date_created,
        fk_categorie,
        fk_type_ressources
    ) VALUE (
        "Reconnaître ses émotions",
        "https://www.upbraining.net/wp-content/uploads/2014/08/reconnaitre-ses-emotions.jpg",
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
        imageBanner,
        content,
        isRestreinted,
        isValide,
        nb_vue,
        date_created,
        fk_categorie,
        fk_type_ressources
    ) VALUE (
        "AU DELÀ DU PÉRIPHÉRIQUE10 ans plus tard, il ne sait toujours pas pourquoi il a déménagé à Nancy",
        "https://www.legorafi.fr/wp-content/uploads/2023/03/nancy-g65d113dd6_1920.jpg",
        "« J’aimerais pouvoir me justifier, mais pour être tout à fait honnête, je ne sais pas ce qui m’a pris », confie Grégoire qui n’a pas remarqué le temps passer lors de sa carrière de project manager dans une boîte de marketing dans l’industrie de l’odontologie. « Est-ce que c’était pour une femme ? Pour un travail ? Je sais juste qu’un jour, je me suis retrouvé en train d’installer un canapé-lit et un mini frigo dans un appartement Rue de Cronstadt, et maintenant je connais les prénoms de toutes les caissières du Match en bas de ma rue », poursuit Grégoire, qui de temps en temps recommande aux gens de visiter la Place Stanislas « parce que c’est pas mal impressionnant quand même avec tous les trucs en or. »

« Grégoire, on l’aime bien, mais on lui demande parfois pourquoi il a déménagé ici et il change à chaque fois de sujet avec un regard vide dans les yeux, comme si son âme avait quitté son corps pour ne pas faire face à la réalité », raconte un de ses collègues. « Il paraît même qu’il a eu l’opportunité de partir travailler en Argentine et ne plus jamais revenir, et personne ne sait pourquoi il ne l’a pas fait », poursuit-il avec une expression de choc soudain sur son visage en se demandant pourquoi, lui aussi, est finalement resté à Nancy.

« Notre ville contient plus de 100,000 habitants, dont la plupart sont parfaitement libres de quitter la ville et décident pourtant de ne pas le faire », explique Mathieu Klein, le maire de Nancy. « Je tiens à préciser que les habitants de ma ville sont libres et que rien ne les interdit d’aller vivre ailleurs. »

Après avoir réfléchi sur son dixième anniversaire en tant que résident de Nancy, Grégoire nous a confié qu’il était prêt pour un grand changement. En effet, il serait actuellement en train de faire des recherches afin de partir à la recherche du grand inconnu à Thionville.",
        0,
        1,
        0,
        '2023-03-01 10:45:00',
        2,
        3
    );

INSERT
    IGNORE INTO Ressources (
        nom,
        imageBanner,
        content,
        isRestreinted,
        isValide,
        nb_vue,
        date_created,
        fk_categorie,
        fk_type_ressources
    ) VALUE (
        "Les hommes qui portent des charentaises pourront partir à la retraite dès 35 ans",
        "https://www.legorafi.fr/wp-content/uploads/2023/02/iStock-174688202-2048x1365.jpg",
        "Le gouvernement est conscient que sa réforme ne passe pas auprès de l’opinion et tente de lâcher du lest pour calmer les manifestations. Ainsi, sur Twitter le Président de la République a surpris son monde en annonçant que les Français qui portent des charentaises pourront partir à la retraite dès 35 ans. 

« Visiblement ces hommes ont renoncé, non seulement au style, mais à une vie active. Nous n’avons plus besoin de ce genre d’individus dans la vie active. On veut sauver le système de retraite, pas le faire couler » a souligné le porte-parole du gouvernement, Olivier Véran.

En effet, le port de la charentaise compromet très fortement la compétitivité de la France. L’économiste Jacques Attali a déclaré récemment que faire travailler les Français qui en portent pourrait faire perdre à la France son triple A. De plus, une étude de l’INSEE affirme que le port de la charentaise est le 1er signe de vieillesse chez les hommes, loin devant les cheveux blancs et le fait d’écrire ses textos avec l’index.",
        0,
        1,
        0,
        '2023-03-01 10:45:00',
        2,
        3
    );


INSERT
    IGNORE INTO Ressources (
        nom,
        imageBanner,
        content,
        isRestreinted,
        isValide,
        nb_vue,
        date_created,
        fk_categorie,
        fk_type_ressources
    ) VALUE (
        "Votre meilleur ami remporte le César du meilleur acteur pour sa prestation dans « Désolé, j’avais pas vu ton message »",
        "https://www.legorafi.fr/wp-content/uploads/2023/02/iStock-1190049544-2048x1365.jpg",
        "Dans les travées de l’Olympia, l’émotion est palpable pour Daniel, 30 ans, qui vit une percée sur le tard en recevant le prestigieux César du meilleur acteur dans le film « Désolé, j’avais pas vu ton message » du réalisateur Jean-Luc Balec : « Je voudrais remercier toute ma famille, le réalisateur et l’équipe du film. Et même mon meilleur ami, dont je n’ouvrirai le message de remerciement que dans 3 ou 4 jours en lui disant que j’avais pas vu ! » s’esclaffe le jeune comédien. 

Cette récompense est autant méritée que peu surprenante, tant le film « Désolé, j’avais pas vu ton message » a fait l’unanimité auprès du public et des critiques. Il retrace la vie d’un homme qui, par paresse et désintérêt envers son entourage, ne prend jamais la peine de répondre aux sollicitations qu’il reçoit par messages. Un film prenant, humain et émouvant, porté par une réalisation moderne et innovante. 

A la sortie de l’Olympia, Daniel n’en revient toujours pas : « C’était un vrai rôle de composition. Dans la vie, c’est vrai que je ne réponds jamais aux messages, par flemme de dire non, sans jamais me soucier de ce qu’en pensent les autres. Amis, travail, je suis pratiquement injoignable en fait. Même l’Académie des César j’ai pris 6 jours à répondre à leur nomination, j’avais pas vu le message ! » termine le nouveau prodige du cinéma Français. ",
        0,
        1,
        0,
        '2023-03-01 10:45:00',
        2,
        3
    );


INSERT
    IGNORE INTO Ressources (
        nom,
        imageBanner,
        content,
        isRestreinted,
        isValide,
        nb_vue,
        date_created,
        fk_categorie,
        fk_type_ressources
    ) VALUE (
        "Le nouvel animal observé dans la Seine serait un électeur socialiste",
        "https://www.legorafi.fr/wp-content/uploads/2022/08/boat-g6652a505b_1920.jpg",
        "On ne sait pas encore comment le pauvre animal s’est retrouvé si loin dans le fleuve et les spéculations vont bon train sur son état de santé. « Ce n’est pas son écosystème d’origine, il est complètement perdu, désorienté » explique un responsable de Sea Shepherd qui surveille l’animal depuis qu’il a été repéré pour la première fois. « Le plus triste est parfois quand il essaie d’appeler ses congénères, il est très seul et personne ne lui répond » commente Julie, une jeune stagiaire qui s’inquiète pour la santé de l’animal. « Nous allons essayer de diffuser des discours de François Hollande lors du meeting du Bourget en 2012 et ce pour essayer de l’attirer en haute mer » explique un autre membre des secours.

Dans l’immédiat, la Préfecture conseillait aux riverains et aux promeneurs de ne pas s’approcher de l’animal. Il y a en effet un fort risque d’être en contact prolongé avec un énième plaidoyer pour la taxation des supers profits, le danger de la finance et une meilleure justice sociale. ",
        0,
        1,
        0,
        '2023-03-01 10:45:00',
        2,
        3
    );

