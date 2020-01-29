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


