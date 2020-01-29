USE BibliotecaTarde_DDL;

SELECT * FROM Autores;

DELETE FROM Autores
WHERE IdAutor IN (1,2);

UPDATE Autores 
SET IdAutor IN (Jefferson, Sei lá);
