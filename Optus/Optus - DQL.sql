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

--SELECIONAR OS ALBUNS DO MESMO ARTISTA
SELECT * FROM Albuns WHERE IdMusicos = 2;

-- USANDO INNER JOIN (JUNÇÃO E DUAS OU MAIS TABELAS)
SELECT Musicos.Nome, Albuns.Nome FROM Musicos
INNER JOIN Albuns ON Musicos.IdMusicos = Albuns.IdAlbuns
WHERE Albuns.IdAlbuns = 2;

--SELECIONAR OS ALBUNS NA MESMA DATA 
SELECT * FROM Albuns WHERE DataLancamento = '2020-01-23';

--INNNER JOIN 
SELECT * FROM Musicos
INNER JOIN Albuns ON Musicos.IdMusicos = Albuns.IdMusicos
WHERE DataLancamento = '2020-01-23';

-- SELECIONAR ALBUNS E ARTISTAS E ORDENAR POR DATA DE LANCAMENTO 
--(DO MAIS ANTIGO PARA O MAIS RECENTE)

--FORMA SIMPLES 
SELECT * FROM Albuns ORDER BY DataLancamento ASC;

--COM JOIN 
SELECT Musicos.Nome AS NomeArtista, Albuns.Nome AS NomeAlbum, Albuns.DataLancamento --Atributos com Apelidos AS ...
FROM Musicos INNER JOIN Albuns ON Musicos.IdMusicos = Albuns.IdAlbuns
ORDER BY DataLancamento ASC;

--SELECIONAR ARITISTAS DO MESMO ESTILO MUSICAL
SELECT IdMusicos, IdEstilo FROM Albuns WHERE IdAlbuns;

--DESAFIO REALIZAR EXERCÍCIO
-- COM INNER JOIN 
-- Aparecer nome do Artista e nome do Estilo 

SELECT Musicos.Nome AS NomeArtista, Estilos.Nome AS NomeEstilo
FROM Musicos
INNER JOIN Albuns ON Musicos.IdMusicos = Albuns.IdMusicos
INNER JOIN Estilos ON Albuns.IdEstilo = Estilos.IdEstilo
WHERE Estilos.IdEstilo = 3;

USE OptusTarde_DDL

CREATE PROCEDURE OrdemLancamento
AS
SELECT * FROM Albuns
ORDER BY Albuns.DataLancamento ASC;

EXECUTE OrdemLancamento;

CREATE PROCEDURE OrdemVisualizacao
AS
SELECT * FROM Albuns
ORDER BY Albuns.Visualizaçao ASC;

EXECUTE OrdemVisualizacao;