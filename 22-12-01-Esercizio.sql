CREATE TABLE Impiego (
	ID_Impiego INT PRIMARY KEY NOT NULL IDENTITY,
	TipoImpiego NVARCHAR(40) NOT NULL,
	StipendioMedio MONEY NOT NULL,
)

CREATE TABLE Impiegato (
	ID_Impiegato INT PRIMARY KEY NOT NULL IDENTITY,
	Nome NVARCHAR(20) NOT NULL,
	Cognome NVARCHAR(20) NOT NULL,
	CodiceFiscale CHAR(16) NOT NULL UNIQUE,
	Eta TINYINT NOT NULL,
	RedditoMensile MONEY,
	DetrazioneFiscale BIT DEFAULT 1,
	ID_Impiego INT NOT NULL,
	DataAssunzione DATE,

	CONSTRAINT FK_Impiegato_Impiego FOREIGN KEY (ID_Impiego) REFERENCES Impiego (ID_Impiego)
)

INSERT INTO Impiego VALUES ('Medico Ospedaliero',3000) --1
INSERT INTO Impiego VALUES ('Infermiere',1400) --2
INSERT INTO Impiego VALUES ('Dentista',4000) --3
INSERT INTO Impiego VALUES ('Professore Universitario',2600) --4
INSERT INTO Impiego VALUES ('Poliziotto',2000) --5
INSERT INTO Impiego VALUES ('Architetto',3000) --6
INSERT INTO Impiego VALUES ('Notaio',4000) --7
INSERT INTO Impiego VALUES ('Avvocato',2000) --8

INSERT INTO Impiegato VALUES ('Bruno','Stano','STNBRN94R14B180', 28, 1470, 0, 2,'2022-12-01')
INSERT INTO Impiegato VALUES ('Marco','Puccio','PCCMRC94R14B180', 38, 3010, 0, 1,'2022-12-01')
INSERT INTO Impiegato VALUES ('Simone','Ponzani','PNZSMN94R14B180', 30, 2408, 0, 4,'2022-12-01')
INSERT INTO Impiegato VALUES ('Roberto','Dabbicco','DBBRBR94R14B180', 26, 2011, 0, 5,'2022-12-01')
INSERT INTO Impiegato VALUES ('Luigi','Crisci','CRSLGI94R14B180', 31, 4032, 0, 7,'2022-12-01')
INSERT INTO Impiegato VALUES ('Lamberto','Martini','MRTLMB94R14B180', 27, 2123, 0, 8,'2022-12-01')
INSERT INTO Impiegato VALUES ('Stefano','Laguda','LGDSTF94R14B180', 28, 3100, 0, 6,'2022-12-01')
INSERT INTO Impiegato VALUES ('Luca','Senatore','SNTLCA94R14B180', 31, 3800, 0, 3,'2022-12-01')
INSERT INTO Impiegato VALUES ('Giovanni','Urso','URSGVN94R14B180', 30, 2980, 0, 1,'2022-12-01')
INSERT INTO Impiegato VALUES ('Nicola','Lerra','LRRNCL94R14B180', 28, 3010, 0, 6,'2022-12-01')

INSERT INTO Impiegato VALUES ('Cristiano','Aliotta','LTTCRS94R14B180', 26, 1890, 0, 8,'2022-12-01')
INSERT INTO Impiegato VALUES ('Giuseppe','Di Pisa','DPSGSP94R14B180', 28, 1320, 0, 2,'2022-12-01')
INSERT INTO Impiegato VALUES ('Dimitri','Lazuka','LZKDMT94R14B180', 24, 1820, 0, 5,'2022-12-01')
INSERT INTO Impiegato VALUES ('Daniela','Di Filippo','DFLDNL94R14B180', 36, 1240, 0, 2,'2022-12-01')
INSERT INTO Impiegato VALUES ('Andrea','Savignano','SVGNDR94R14B180', 20, 2500, 0, 4,'2022-12-01')
INSERT INTO Impiegato VALUES ('Aras','Pourbjan','PRBRSS94R14B180', 31, 3100, 0, 6,'2022-12-01')
INSERT INTO Impiegato VALUES ('Marina','Gennari','GNNMRN94R14B180', 26, 1130, 0, 2,'2022-12-01')
INSERT INTO Impiegato VALUES ('Chiara','Presaghi','PRSCHR94R14B180', 22, 1300, 0, 2,'2022-12-01')
INSERT INTO Impiegato VALUES ('Antonino','Chindemi','CHNNTN94R14B180', 24, 4100, 0, 7,'2022-12-01')
INSERT INTO Impiegato VALUES ('Emanuele','Umberto','MBRMNL94R14B180', 41, 2100, 0, 8,'2022-12-01')

SELECT * FROM Impiegato WHERE Eta > 29
SELECT * FROM Impiegato WHERE RedditoMensile > 800
SELECT * FROM Impiegato WHERE DetrazioneFiscale = 1
SELECT * FROM Impiegato WHERE DetrazioneFiscale = 0
SELECT * FROM Impiegato WHERE Cognome LIKE 'S%' ORDER BY Cognome, Nome
SELECT COUNT(*) AS NumeroTotaleImpiegati FROM Impiegato
SELECT SUM(RedditoMensile) AS SommaRedditiMensili FROM Impiegato
SELECT AVG(RedditoMensile) AS MediaRedditiMensili FROM Impiegato
SELECT MAX(RedditoMensile) AS MassimoRedditoMensile FROM Impiegato
SELECT MIN(RedditoMensile) AS MinimoRedditoMensile FROM Impiegato
SELECT * FROM Impiegato WHERE DataAssunzione BETWEEN '2007-01-01' AND '2008-01-01'

SELECT Nome,Cognome,DetrazioneFiscale,DataAssunzione,TipoImpiego,RedditoMensile,StipendioMedio FROM Impiegato JOIN Impiego ON Impiegato.ID_Impiego = Impiego.ID_Impiego
SELECT AVG(Eta) AS EtaMedia FROM Impiegato