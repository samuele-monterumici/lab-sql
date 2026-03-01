CREATE TABLE treno(
id_treno CHAR(6) PRIMARY KEY,
posti_max INT NOT NULL,
anno_costruz INT NOT NULL
);

CREATE TABLE tratta(
id_tratta INT PRIMARY KEY AUTO_INCREMENT,
stazione_p VARCHAR(50) NOT NULL,
stazione_a VARCHAR(50)NOT NULL,
distanza_km INT NOT NULL
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


