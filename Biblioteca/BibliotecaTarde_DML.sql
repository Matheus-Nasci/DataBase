USE BibliotecaTarde_DDL;

SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;

INSERT INTO Generos(Titulo)
VALUES ('Romance'),('Ficcao'),('Historia'),('Conto De Fadas'),('Acao');

INSERT INTO Autores(NomeAutor)
VALUES ('Matheus'),('Roberto'),('Felipe'),('Fernando'),('Thiago');

UPDATE Generos
SET Titulo = 'Drama'
WHERE IdGenero = 4;

DELETE FROM Autores
WHERE IdAutor = 2;

INSERT INTO Livros(Titulo,IdAutor,IdGenero)
VALUES	('Os camundongos', 3, 5),
		('O Pequeno Príncipe', 3, 2),
		('Usando o Amor', 4, 1),
		('Super Chock', 5, 4);

