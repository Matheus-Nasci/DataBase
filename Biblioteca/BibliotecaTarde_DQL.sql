CREATE DATABASE BibliotecaTarde_DQL;

USE BibliotecaTarde_DDL;

SELECT * FROM Autores;
SELECT * FROM Generos;
SELECT * FROM Livros;

SELECT Titulo, NomeAutor FROM Livros, Autores;

SELECT TituloLivro, IdGenero FROM Livros;
SELECT TituloLivro, IdAutor, IdGenero FROM Livros;


