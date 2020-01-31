CREATE DATABASE DesafioOptus_Tarde;

USE OptusTarde_DDL;

SELECT * FROM Musicos;

SELECT * FROM Albuns;

SELECT * FROM Albuns
WHERE IdMusicos = 1;

SELECT * FROM Albuns
WHERE DataLancamento = '29/01/2020';

SELECT IdMusicos FROM Albuns
WHERE IdEstilo = 2;

SELECT IdAlbuns, Nome, IdMusicos, DataLancamento FROM Albuns
ORDER BY DataLancamento DESC;