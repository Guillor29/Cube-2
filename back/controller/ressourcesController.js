const ressourcesModel = require('../model/ressourcesModel');

function getAllRessources(req, res) {
    ressourcesModel.getAllRessources(function (error, results) {
        if (error) {
            console.error('Erreur de connexion à la base de données MySQL : ' + error.stack);
            res.status(500).json({ error: 'Erreur lors de la récupération des ressources' });
            return;
        }
        console.log('Les résultats de la requête SELECT sont : ', results);
        res.json(results);
    });
}

function getRessource(req, res) {
    const id = req.params.id;
    ressourcesModel.getRessource(id, function (error, results) {
        if (error) {
            console.error('Erreur de connexion à la base de données MySQL : ' + error.stack);
            res.status(500).json({ error: 'Erreur lors de la récupération de la ressource' });
            return;
        }
        console.log('Les résultats de la requête SELECT sont : ', results);
        res.json(results);
    });
}

function addRessource(req, res) {
    const ressource = req.body;
    ressourcesModel.addRessource(ressource, function (error, results) {
        if (error) {
            console.error('Erreur de connexion à la base de données MySQL : ' + error.stack);
            res.status(500).json({ error: 'Erreur lors de l\'ajout de la ressource' });
            return;
        }
        console.log('Les résultats de la requête POST sont : ', results);
        res.json(results);
    });
}

function updateRessource(req, res) {
    const ressource = req.body;
    ressourcesModel.updateRessource(ressource, function (error, results) {
        if (error) {
            console.error('Erreur de connexion à la base de données MySQL : ' + error.stack);
            res.status(500).json({ error: 'Erreur lors de la modification de la ressource' });
            return;
        }
        console.log('Les résultats de la requête PUT sont : ', results);
        res.json(results);
    });
}

function deleteRessource(req, res) {
const id = req.params.id;
    ressourcesModel.deleteRessource(id, function (error, results) {
        if (error) {
            console.error('Erreur de connexion à la base de données MySQL : ' + error.stack);
            res.status(500).json({ error: 'Erreur lors de la suppression de la ressource' });
            return;
        }
        console.log('Les résultats de la requête DELETE sont : ', results);
        res.json(results);
    });
}

module.exports = {
    getAllRessources,
    getRessource,
    addRessource,
    updateRessource,
    deleteRessource
};
