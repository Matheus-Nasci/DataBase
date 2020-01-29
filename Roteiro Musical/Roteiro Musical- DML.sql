USE RoteiroMusical_Tarde;

SELECT * FROM EstilosMusicais;
SELECT * FROM Artistas;

INSERT INTO EstilosMusicais (Titulo)
VALUES ('Sampa'),('Trap'),('Rock'),('Indie'),('Reggae');

INSERT INTO Artistas (Nome, IdEstilos)
VALUES	('Thiaguinho', 1),
		('Travis scott', 2),
		('Nirvana', 3),
		('Ana Vitoria', 4),
		('Bob Marley', 5);