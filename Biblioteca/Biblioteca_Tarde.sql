--COMENTARIO
CREATE DATABASE BibliotecaTarde_DDL;

--Apontar para o banco que vai ser usado
USE BibliotecaTarde_DDL;

--CRIAR TABELAS 
CREATE TABLE Autores (
	IdAutor		INT PRIMARY KEY IDENTITY,
	NomeAutor	VARCHAR (200) NOT NULL UNIQUE
	);

CREATE TABLE Generos (
	IdGenero INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (200) NOT NULL UNIQUE
	);

CREATE TABLE Livros (
	IdLivro		INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR(255),
	IdAutor		INT FOREIGN KEY REFERENCES Autores (IdAutor),
	IdGenero	INT FOREIGN KEY REFERENCES Generos (IdGenero)
);

SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;

--"Alterar" faz parte da Linguagem de DDL
--ALTERAR ADICIONAR UMA NOVA COLUNA 
ALTER TABLE Generos
ADD Descricao VARCHAR(255);

--ALTERAR TIPO DE DADO
ALTER TABLE Generos 
ALTER COLUMN Descricao CHAR(100);

--ALTERAR OU EXCLUIR COLUNA
ALTER TABLE Generos
DROP COLUMN Descricao

--Excluir (Tabela só apaga quando não tem relação com outras)
DROP TABLE Livros;
DROP TABLE Generos;

--Excluir Banco de Dados
DROP DATABASE Biblioteca_Tarde;