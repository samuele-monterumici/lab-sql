CREATE TABLE libro(
isbn VARCHAR(20) PRIMARY KEY,
titolo VARCHAR(50) NOT NULL,
cod_casa_editrice INT NOT NULL,
n_pagine INT NOT NULL,
tipologia VARCHAR(20) NOT NULL,
n_edizione INT NOT NULL,
prezzo INT NOT NULL,
anno_pubblicazione DATE NOT NULL
);

CREATE TABLE tratta(
id_tratta INT PRIMARY KEY AUTO_INCREMENT,
stazione_p VARCHAR(50) NOT NULL,
stazione_a VARCHAR(50)NOT NULL,
distanza_km INT NOT NULL
);

CREATE TABLE casa_editrice(
id_casa_editrice INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
nazione INT NOT NULL,
data DATE NOT NULL,
orario_p TIME NOT NULL,
orario_a TIME NOT NULL,
FOREIGN KEY (cod_treno) REFERENCES treno(id_treno),
FOREIGN KEY (cod_tratta) REFERENCES tratta(id_tratta)
);
