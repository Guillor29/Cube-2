const mysql = require('mysql2');

// Créer une connexion à la base de données MySQL
const connection = mysql.createConnection({
    host: 'URL DE BASE DE DONNEES',
    user: 'admin',
    password: 'we_are_the_champions',
    database: 'groupetic'
});

// Établir la connexion à la base de données MySQL
connection.connect(function(err) {
    if (err) {
        console.error('Erreur de connexion à la base de données MySQL : ' + err.stack);
        return;
    }

    console.log('Connecté à la base de données MySQL avec l\'ID ' + connection.threadId);
});

// Exécuter une requête SELECT à partir de la base de données MySQL
connection.query('SELECT * FROM ressources', function (error, results, fields) {
    if (error) throw error;

    console.log('Les résultats de la requête SELECT sont : ', results);
});

// Fermer la connexion à la base de données MySQL
connection.end();
