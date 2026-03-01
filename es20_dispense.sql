CREATE TABLE treno(
id_treno CHAR(6) PRIMARY KEY,
posti_max INT NOT NULL,
anno_costruz INT NOT NULL
);

CREATE TABLE stazione(
id_stazione INT PRIMARY KEY AUTO_INCREMENTL,
nome VARCHAR(30) NOT NULL,
citta VARCHAR(30) NOT NULL
);

CREATE TABLE tratta(
id_tratta INT PRIMARY KEY AUTO_INCREMENT,
distanza_km INT NOT NULL
);

CREATE TABLE fermata(
cod_tratta INT NOT NULL,
ordine_progressivo INT NOT NULL,
cod_stazione INT NOT NULL,
PRIMARY KEY(cod_tratta, ordine_progressivo),
FOREIGN KEY (cod_tratta) REFERENCES tratta(id_tratta),
FOREIGN KEY (cod_stazione) REFERENCES stazione(id_stazione)
);

CREATE TABLE corsa(
id_corsa INT PRIMARY KEY AUTO_INCREMENT,
cod_treno CHAR(6) NOT NULL,
cod_tratta INT NOT NULL,
data DATE NOT NULL,
orario_p TIME NOT NULL,
orario_a TIME NOT NULL,
FOREIGN KEY (cod_treno) REFERENCES treno(id_treno),
FOREIGN KEY (cod_tratta) REFERENCES tratta(id_tratta)
);
