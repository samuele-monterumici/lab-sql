--1 Estrazione di tutti i dati relativi ai modelli dei prodotti a catalogo.
  SELECT * FROM 4CTL_modelli_prodotto;

--2 Visualizzazione di nome e prezzo di tutti i modelli a catalogo.
  SELECT nome, prezzo_listino FROM 4CTL_modelli_prodotto;

--3 Ricerca di tutti i modelli con prezzo di listino inferiore a 600€.
  SELECT * FROM 4CTL_modelli_prodotto WHERE prezzo_listino < 600

--4 Selezione dei modelli che contengono la stringa ’Samsung’ nel nome.
  SELECT * FROM 4CTL_modelli_prodotto WHERE nome LIKE 'Samsung%'

--5 Elenco dei clienti il cui nome termina con la lettera ’a’.
  SELECT * FROM 4CTL_clienti WHERE nome LIKE '%a';

--6 Elenco dei modelli ordinati dal prezzo più elevato al più basso.
  SELECT * FROM 4CTL_modelli_prodotto ORDER BY prezzo_listino DESC;

--7 Visualizzazione delle categorie di prodotti disponibili senza ripetizioni.
  SELECT DISTINCT categoria FROM 4CTL_modelli_prodotto;

--8 Estrazione dei primi 10 prodotti arrivati in magazzino in ordine cronologico.
  SELECT * FROM 4CTL_prodotti ORDER BY data_arrivo LIMIT 10

--9 Elenco dei clienti ordinati alfabeticamente per cognome e successivamente per nome.
  SELECT * FROM 4CTL_clienti ORDER BY cognome, nome;

--10 Ricerca di tutti gli ordini effettuati nel mese di giugno 2024.
  SELECT * FROM 4CTL_ordini WHERE data_ordine LIKE '2024-06%';

--11 Elenco dei codici seriali in magazzino associati al nome del relativo modello.
  SELECT cod_seriale, nome 
  FROM 4CTL_prodotti, 4CTL_modelli_prodotto 
  WHERE 4CTL_prodotti.id_modello=4CTL_modelli_prodotto.id_modello;

--12 Ricostruzione dello scontrino: ID ordine, cognome cliente, nome modello e seriale venduto.
  SELECT o.id_ordine, c.cognome, mp.nome, p.cod_seriale 
  FROM 4CTL_ordini o, 4CTL_clienti c, 4CTL_modelli_prodotto mp, 4CTL_prodotti p, 4CTL_dettagli_ordine d
  WHERE 1=1 
  AND o.id_ordine=d.id_ordine 
  AND d.id_prodotto=p.id_prodotto 
  AND p.id_modello=mp.id_modello 
  AND c.id_cliente=o.id_cliente
  
--13 Visualizzazione dello stato della garanzia per ogni codice seriale venduto.
  SELECT stato_garanzia, cod_seriale 
  FROM 4CTL_garanzie, 4CTL_prodotti 
  WHERE 4CTL_garanzie.id_prodotto=4CTL_prodotti.id_prodotto
    
--14 Conteggio dei pezzi fisici disponibili in magazzino per ogni categoria di prodotto.
  SELECT categoria, 
  COUNT(id_prodotto) AS prodotti 
  FROM 4CTL_modelli_prodotto, 4CTL_prodotti 
  WHERE 4CTL_prodotti.id_modello=4CTL_modelli_prodotto.id_modello 
  AND 4CTL_prodotti.disponibilita='S' 
  GROUP BY categoria

  SELECT categoria, 
  COUNT(id_prodotto) AS prodotti 
  FROM 4CTL_modelli_prodotto 
  JOIN 4CTL_prodotti ON 4CTL_prodotti.id_modello=4CTL_modelli_prodotto.id_modello 
  WHERE 4CTL_prodotti.disponibilita='S' 
  GROUP BY categoria
    
--15 Calcolo del totale incassato per ogni cliente basato sulla somma degliordini effettuati.

--16 Determinazione del prezzo medio di listino per ogni categoria di prodotto a catalogo.
    
--17 Identificazione del numero di prodotti venduti per ogni tipologia di garanzia (attiva, scaduta, in assistenza).
    
--18 Elenco dei clienti che hanno effettuato una spesa complessiva superiore a 2000€.
    
--19 Identificazione delle categorie che hanno più di 50 prodotti registrati a catalogo.
    
--20 Visualizzazione degli ordini il cui prezzo totale è superiore alla media di tutti gli ordini.
    
--21 Elenco dei modelli che non sono mai stati venduti (assenti nella tabella dettagli_ordine).
