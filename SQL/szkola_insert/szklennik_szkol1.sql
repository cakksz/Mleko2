DROP TABLE IF EXISTS tbUczniowie;
CREATE TABLE tbUczniowie (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	imie TEXT,
	nazwisko TEXT,
	plec INTEGER,
	idKlasa INTEGER NOT NULL REFERENCES tbklasy(id),
	egzHum NUMERIC NOT NULL DEFAULT 0,
	egzMat NUMERIC NOT NULL DEFAULT 0,
	egzJez NUMERIC NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS tbKlasy;
CREATE TABLE tbKlasy (
	id  INTEGER PRIMARY KEY AUTOINCREMENT,
	klasa – TEXT,
	rokNaboru – INTEGER,
	rokMatury – INTEGER
);

DROP TABLE IF EXISTS tbPrzedmioty;
CREATE TABLE tbPrzedmioty (
	id  INTEGER PRIMARY KEY AUTOINCREMENT,
	przedmiot – TEXT,
	nazwiskoNaucz – TEXT,
	imieNaucz – TEXT,
	plecNaucz – INTEGER
);

DROP TABLE IF EXISTS tbOceny;
CREATE TABLE tbOceny (
	id  INTEGER PRIMARY KEY AUTOINCREMENT,
	ocena – typ NUMERIC,
	datad – typ DATE,
	idUczen – INTEGER NOT NULL REFERENCES tbUczniowie(id),
	idPrzedmiot – INTEGER NOT NULL REFERENCES tbPrzedmioty(id),
	FOREIGN KEY(idUczen) REFERENCES tbUczniowie(id),
	FOREIGN KEY(idPrzedmiot) REFERENCES tbPrzedmioty(id)
);

INSERT INTO tbKlasy VALUES(null, '1A', 2015, 2018);
INSERT INTO tbKlasy VALUES(null, '1B', 2015, 2018);

INSERT INTO tbUczniowie VALUES(null, 'Adam', 'Kowalski', 1, 2, 80.6, 50, 90.5);
INSERT INTO tbUczniowie VALUES(null, 'Ilona', 'Nowak', 0, 1, 50.6, 78.9, 80);
INSERT INTO tbUczniowie VALUES(null, 'Jaś', 'Fasola', 1, 1, 70.7, 67.7, 90);

INSERT INTO tbPrzedmioty VALUES (null, 'biologia', 'Henryszewski', 'Robert', 1);
INSERT INTO tbPrzedmioty VALUES (null, 'fizyka', 'Ignaczak', 'Jolanta', 0);

INSERT INTO tbOceny VALUES (null, 4.5, '2015-10-01', 1, 1);
INSERT INTO tbOceny VALUES (null, 3, '2015-09-25', 1, 2);

INSERT INTO tbOceny VALUES (null, 4, '2015-09-25', 2, 1);
INSERT INTO tbOceny VALUES (null, 3.5, '2015-10-05', 2, 2);

INSERT INTO tbOceny VALUES (null, 5, '2015-09-29', 3, 1);
INSERT INTO tbOceny VALUES (null, 2, '2015-10-02', 3, 2);
