CREATE TABLE casa_editrice(
id_casa_editrice INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
nazione VARCHAR(20),
anno_fondazione INT,
pubblica_privata BOOLEAN NOT NULL DEFAULT 0
);

CREATE TABLE autore(
id_autore INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
cognome VARCHAR(50),
ddn DATE,
sesso CHAR(1),
nazionalita VARCHAR(50)
);

CREATE TABLE libro(
isbn VARCHAR(13) PRIMARY KEY,
titolo VARCHAR(50) NOT NULL,
cod_casa_editrice INT NOT NULL,
anno_pubblicazione INT,
n_pagine INT,
tipologia VARCHAR(20),
n_edizione INT,
prezzo DECIMAL(6,2),
FOREIGN KEY (cod_casa_editrice) REFERENCES casa_editrice(id_casa_editrice)
);

CREATE TABLE autori_libri(
isbn_libro VARCHAR(13),
cod_autore INT,
PRIMARY KEY (isbn_libro, cod_autore),
FOREIGN KEY (isbn_libro) REFERENCES libro(isbn),
FOREIGN KEY (cod_autore) REFERENCES autore(id_autore)
);
