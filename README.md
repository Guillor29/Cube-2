# Project setup

## Changement adresse IP

You need to go in the frontend
```
cd ./frontend
```
Then modify the env.json file which is in public, you must put your IP address
```
{
  "baseUrl": "http://ADRESSE:3000"
}
```

## node


Setup backend
```sh
cd ./back
npm install
```

Setup frontend
```sh
cd ./frontend
npm install
```

## mySQL


You need to create a local MySQL database using the parameters indicated in the '/back/model/ressourcesModel.js' file

# Run project


Run backend with :
```sh
cd ./back
node index.js
```

Run frontend with :
```sh
cd ./frontend
npm run serve
```

# Run production


Run frontend :
```sh
cd ./frontend
npm run build
npx http-server dist
```

Run backend :
```sh
cd ./back
npm run build
node dist/index.js
```



## Creation de la database
- [x] OK
### Base de donnée : détails
- [x] Creation de la database
    - `groupetic`
- [x] Création des tables
    - `Ressources`
    - `Categorie`
    - `Type_Ressources`
    - `Commentaires`
- [x] Création des FK entre tables
- [x] Insertion de données
    - `Ressources`
        - [x] Texte
        - [x] Lien video
        - [x] PDF
    - `Categorie`
        - [x] "Santé" => id : 1
        - [x] "Bien etre" => id : 2
        - [x] "Monde professionnel" => id : 3
    - `Type_Ressources`
        - [x] "Famille" => id : 1
        - [x] "Soi" => id : 2
        - [x] "Video => id : 3
        - [ ] "PDF" => id : 4
