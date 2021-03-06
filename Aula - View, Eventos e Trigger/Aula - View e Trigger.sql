CREATE DATABASE pclinicsTarde
GO
USE pclinicsTarde
GO

CREATE TABLE Clinica (
	IdClinica INT PRIMARY KEY IDENTITY,
	RazaoSocial VARCHAR(100),
	Endereco VARCHAR(100)
);

CREATE TABLE Veterinario (
	IdVet INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (100),
	CRMV VARCHAR (100),
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica)
);

CREATE TABLE Dono (
	IdDono INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (100)
);

CREATE TABLE TipoPet (
	IdTipoPet INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (100)
);

CREATE TABLE Raca (
	IdRaca INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (100),
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet)
);

CREATE TABLE Pet(
	IdPet INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (100),
	Telefone VARCHAR(100),
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono),
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca),
);

CREATE TABLE CemiterioCanino(
	IdPet INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (100),
	Telefone VARCHAR(100),
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono),
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca),
);

CREATE TABLE Atendimento(
	IdAtendimento INT PRIMARY KEY IDENTITY,
	DataAtendimento DATE,
	Descricao VARCHAR (4000),
	IdVet INT FOREIGN KEY REFERENCES Veterinario(IdVet),
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet)
);

INSERT INTO Clinica (RazaoSocial, Endereco)
VALUES ('Clinica Veterinaria','Alameda Bar�o de Limeira, 532');

INSERT INTO Veterinario (IdClinica, Nome, CRMV)
VALUES (1,'Pablo',235),
	(1,'Geoavana',345),
	(1,'Carlos',567);

INSERT INTO Dono(Nome)
VALUES ('Jo�o'),
	('Marina'),
	('Felipe'),
	('Gabriel'),
	('Erick');

INSERT INTO TipoPet(Titulo)
VALUES ('Cachorro'),
	('Gato'),
	('Cobra'),
	('Elefante'),
	('Le�o');

INSERT INTO Raca(IdTipoPet, Titulo)
VALUES (5,'Albino'),
	(3,'Siames'),
	(2,'Persa'),
	(4,'Arabico'),
	(1,'Labrador');

INSERT INTO Pet(IdDono, IdRaca, Nome, Telefone)
VALUES (1,5,'Beach','2345678932'),
	(3,2,'Floquinho','7827362178'),
	(4,4,'Grand�o','8372738172'),
	(5,2,'Vira','3823237711'),
	(2,1,'Taai','4237112873');

INSERT INTO Atendimento(IdVet, IdPet, DataAtendimento, Descricao)
VALUES (1,1,'23/02/2020','Tudo em ordem'),
	(2,4,'30/09/2018','Doen�a grave detectada'),
	(3,3,'04/05/2019','T� bem o moleque'),
	(3,2,'02/01/2020','P� no caix�o')
				
SELECT * FROM Veterinario;

CREATE TRIGGER TRG_INSERT
ON Atendimento
AFTER INSERT
AS 
SELECT * FROM inserted;

CREATE TRIGGER TRG_INSERT_PET
ON Pet
INSTEAD OF INSERT
AS 
INSERT INTO CemiterioCanino
	(Nome)
SELECT
	i.Nome
FROM 
	inserted i
	WHERE i.Nome IN(SELECT * FROM Pet);

CREATE TRIGGER TRG_PET
ON Pet
FOR INSERT
AS 
SELECT * FROM inserted;

INSERT INTO Pet (Nome)
VALUES ('Costelinha');

--VIEW 

CREATE VIEW vwPclinics
AS
SELECT
Nome,
Telefone
FROM Pet

SELECT * FROM vwPclinics;

DROP VIEW vwPclinics;










