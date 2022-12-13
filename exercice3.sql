CREATE TABLE Resultat(
    _idResultat INT PRIMARY KEY NOT NULL,
   DateCréation DATE,
   commentaire VARCHAR(255),
   _idType INT REFERENCES TypeResultat (_idType)
);

CREATE TABLE Rapport(
    _idRapport INT PRIMARY KEY NOT NULL,
   DatePublication DATE,
   Nom VARCHAR(255),
   ProduitID INT AUTOINCREMENT,
   _idResultat INT REFERENCES Resultat (_idResultat)
);

CREATE TABLE TypeResultat(
    _idType INT PRIMARY KEY NOT NULL,
   Description VARCHAR(255)
);

/*Comment peut-on faire pour que le champ de date de création d'une ligne de Resultat soit créé automatiquement au Datetime actuel dans la base de données en SQL?

En utilisant AUTOINCREMENT
*/

SELECT * Rapport WHERE Description = 'Labo niveau 4';