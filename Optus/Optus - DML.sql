--DML LINGUAGEM DE MANIPULACAO DE DADOS
SELECT * FROM Estilos;
SELECT * FROM Albuns;
SELECT * FROM Artistas;
SELECT * FROM TipoUsuario;
SELECT * FROM Usuario;

-- COMANDO PARA INSERIR(INSERT) DADOS
INSERT INTO Estilos (Nome)
VALUES ('Pagode'),('Samba'),('Rock');

INSERT INTO Artistas (Nome)
VALUES ('Anita'),('ZecaPagodinho'),('Pitty');

INSERT INTO Albuns (Nome, DataLancamento, Localizacao, QtdMinutos, IdArtista, IdEstilo)
VALUES ('Equalize','29/01/2020','Disney',120, 3, 3);

--Update Alterar Dados

UPDATE Artistas 
SET Nome = 'Pericles'
WHERE IdArtista = 2;

--DELETE APAGAR DADOS 
DELETE FROM Artistas 
WHERE IdArtista = 5;

--Limpar todos os dados da tabela 
TRUNCATE TABLE Albuns;
TRUNCATE TABLE Artistas;
TRUNCATE TABLE Estilos;

USE Optus_Tarde;

INSERT INTO Estilos(Nome)
VALUES ('Reggae'),('Trap');

INSERT INTO Artistas (Nome)
VALUES ('Bob Marley'),('Travis Scott');

UPDATE Artistas 
SET Nome = 'Post Malone'
WHERE IdArtista = 5;

INSERT INTO Albuns (Nome, DataLancamento, Localizacao, QtdMinutos, IdArtista, IdEstilo)
VALUES ('Only those who smoke marijuana','15/01/2020','SP',240, 4, 4);

UPDATE Albuns
SET QtdMinutos = 420
WHERE IdAlbum = 1;

DELETE FROM Albuns
WHERE IdAlbum = 1;

