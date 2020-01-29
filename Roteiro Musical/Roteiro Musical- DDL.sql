CREATE DATABASE Roteiro_Musical;

USE Roteiro_Musical;

CREATE TABLE EstilosMusicais (
	IdEstilo	INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR (250) NOT NULL UNIQUE
	);

CREATE TABLE Artistas (
	IdArista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (250),
	IdEstilos INT FOREIGN KEY REFERENCES EstilosMusicais(IdEstilos)
	);

SELECT * FROM Artistas;
SELECT * FROM EstilosMusicais;
