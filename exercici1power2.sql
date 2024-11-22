CREATE TABLE clients (
dni CHAR(9) PRIMARY KEY,
nom VARCHAR(50),
direccio VARCHAR(50)
);
CREATE TABLE pagaments_pendents (
codi INTEGER PRIMARY KEY AUTO_INCREMENT,
dni CHAR(9),
import DOUBLE,
FOREIGN KEY (dni) REFERENCES clients(dni)
ON DELETE NO ACTION
ON UPDATE NO ACTION
);

-- Inserim un client i dos pagaments pendents
INSERT INTO clients VALUES ('55667788G','Pikachu','C\ Pueblo paleta, 22');
INSERT INTO pagaments_pendents (dni, import) VALUES ('55667788G', 467);
INSERT INTO pagaments_pendents (dni, import) VALUES ('55667788G', 56.7);


DELETE FROM clients;
UPDATE clients SET dni = 0;
DELETE clients;
