const express = require('express');
const app = express();
const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'URL DE BASE DE DONNEES',
    user: 'admin',
    password: 'we_are_the_champions',
    database: 'groupetic'
});

app.get('/api/hello', (req, res) => {
    res.send('Hello World!');
    console.log('Hello World!');
});

// Fonction pour get les ressources
app.get('/api/ressources', (req, res) => {
    connection.connect(function (err) {
        if (err) {
            console.error('Erreur de connexion à la base de données MySQL : ' + err.stack);
            return;
        }
        console.log('Connecté à la base de données MySQL avec l\'ID ' + connection.threadId);
    });
    // Exécuter une requête SELECT à partir de la base de données MySQL
    connection.query('SELECT * FROM ressources', function (error, results) {
        if (error) throw error;
        console.log('Les résultats de la requête SELECT sont : ', results);
        res.json({results});
    });
});

// Fonction pour post les ressources
app.post('/api/ressources', (req, res) => {
    connection.connect(function (err) {
        if (err) {
            console.error('Erreur de connexion à la base de données MySQL : ' + err.stack);
            return;
        }
        console.log('Connecté à la base de données MySQL avec l\'ID ' + connection.threadId);
    });
    // Exécuter une requête INSERT à partir de la base de données MySQL
    connection.query('INSERT INTO ressources (nom, type, contenu) VALUES ("test", "video", "test")', function (error, results) {
        if (error) throw error;
        console.log('Les résultats de la requête POST sont : ', results);
        res.json({results});
    });
});


app.listen(3000, () => {
    console.log('Server listening on port 3000');
});
