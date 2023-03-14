"use strict";
const mysql = require('mysql2');
const connection = mysql.createConnection({
    host: 'URL DE BASE DE DONNEES',
    user: 'admin',
    password: 'we_are_the_champions',
    database: 'groupetic2'
});
/**
 *
 *
 * @param {*} callback
 */
function getAllRessources(callback) {
    connection.query('SELECT * FROM Ressources', callback);
}
function getRessource(id, callback) {
    connection.query('SELECT * FROM Ressources WHERE id = ?', [id], callback);
}
function addRessource(request, callback) {
    // console.log(Object.getOwnPropertyNames(request));
    // request.
    // Query curl : $ curl -d '{  "type_ressources" : 2, "content" : "azeaze" , "nom" : "truc", "categorie" : 2}' -X POST "http://localhost:3000/api/ressources"  -H "Content-Type: application/json"
    // nom,
    // imageBanner,
    // content,
    // isRestreinted,
    // isValide,
    // nb_vue,
    // date_created,
    // fk_categorie,
    // fk_type_ressources
    try {
        const { nom, categorie, content, type_ressources } = request;
        const param_stringed = "Ressource du nom de {" + nom + "}, de catégorie {" + categorie + "}, type_ressources {" + type_ressources + "} Contenu : " + content;
        console.log(param_stringed);
        connection.query('INSERT INTO Ressources (nom, fk_type_ressources, fk_categorie, content) VALUES (?, ?, ?, ?)', [nom, type_ressources, categorie, content], callback);
    }
    catch (error) {
        console.log(error);
    }
}
function updateRessource(request, callback) {
    try {
        const { id, nom, categorie, content, type_ressources } = request;
        const param_stringed = "Ressource du nom de {" + nom + "}, de catégorie {" + categorie + "}, type_ressources {" + type_ressources + "} Contenu : " + content + "with id [" + id + "]";
        console.log(param_stringed);
        connection.query('UPDATE Ressources SET nom = ?, fk_type_ressources = ?, fk_categorie = ?,content = ?  WHERE id = ?', [nom, type_ressources, categorie, content, id], callback);
    }
    catch (error) {
        console.log(error);
    }
}
function deleteRessource(id, callback) {
    console.log(id);
    connection.query('DELETE FROM Ressources WHERE id = ?', [id], callback);
}
module.exports = {
    getAllRessources,
    getRessource,
    addRessource,
    updateRessource,
    deleteRessource
};
