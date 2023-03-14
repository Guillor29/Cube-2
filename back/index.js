const express = require('express');
const bodyParser = require("body-parser");
const app = express();
const cors = require('cors');
const ressourcesController = require('./controller/ressourcesController');

app.get('/api/hello', (req, res) => {
    res.send('Hello World!');
    console.log('Hello World!');
});
// app.use(express.json)
// app.use(express.)
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(bodyParser.raw());
app.use(cors(['http://localhost:8080', 'http://yourapp.com']));


app.get('/api/ressources', ressourcesController.getAllRessources);
app.get('/api/ressources/:id', ressourcesController.getRessource);
app.post('/api/ressources', ressourcesController.addRessource);
app.put('/api/ressources', ressourcesController.updateRessource);
app.delete('/api/ressources/:id', ressourcesController.deleteRessource);

app.listen(3000, () => {
    console.log('Server listening on port 3000');
});