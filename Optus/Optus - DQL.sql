CREATE DATABASE OptusTarde_DQL;

USE OptusTarde_DDL;

SELECT * FROM Musicos;

SELECT Nome FROM Musicos;

SELECT Nome, DataLancamento  FROM Albuns;

--Operadores < > = 
SELECT * FROM Albuns WHERE IdAlbuns = 1;

SELECT * FROM Albuns, Musicos WHERE IdAlbuns > 2;

-- OR OU 
SELECT Nome, Minutos FROM Album
WHERE (DataLancamento IS NULL) or (Localizacao IS  NULL);

--LIKE Comparacao de Texto
--'Pitty' -Encontrar
--'Pitty%'-Começo da Frase
--'%Pitty'-No Final
--'%Pitty%'-No meio da Frase

SELECT IdAlbuns, Nome FROM Albuns
WHERE Nome LIKE 'Pitty%' --No Começo

SELECT IdAlbuns, Nome FROM Albuns 
WHERE Nome LIKE '%Pitty%' --No meio da frase

INSERT INTO Albuns (Nome, DataLancamento, Minutos, Visualizaçao)
VALUES	('Sei lá','29/01/2020', 190,'49'),
		('Olha aqui','28/07/2019', 150,'12'),
		('What?','17/06/2015', 60,'34');

INSERT INTO Estilos (Nome)
VALUES ('Sampa'),('Rock'),('Reggae');

INSERT INTO Musicos(Nome)
VALUES	('Thiaguinho'),
		('Travis scott'),
		('Nirvana');

--Ordenação
SELECT Nome FROM Album 
ORDER BY Nome;

--Ordenacao Invertida 
SELECT IdAlbum, Nome, Minutos FROM Album
ORDER BY Minutos DESC

-- Ordenacao invertida (Do Maior para o menor)
SELECT IdAlbum, Nome, Minutos FROM Album
ORDER BY Minutos ASC;

-- Data mais velho para o mais novo
SELECT IdAlbum, Nome, Minutos FROM Album
ORDER BY DataLancamento ASC;

--COUNT 
SELECT COUNT(IdAlbum) FROM Albuns;
SELECT * FROM Albuns;
