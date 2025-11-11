-- 1. Nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- 2. Nome e ano dos filmes ordenados por ano crescente
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

-- 3. Filme "De Volta para o Futuro" com nome, ano e duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4. Filmes lançados em 1997
SELECT Nome, Ano FROM Filmes WHERE Ano = 1997;

-- 5. Filmes lançados após o ano 2000
SELECT Nome, Ano FROM Filmes WHERE Ano > 2000;

-- 6. Filmes com duração entre 100 e 150 minutos, ordenados por duração crescente
SELECT Nome, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

-- 7. Quantidade de filmes por ano, ordenado pela quantidade decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8. Atores do gênero masculino
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- 9. Atores do gênero feminino, ordenados pelo primeiro nome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC;

-- 10. Nome do filme e seu(s) gênero(s)
SELECT F.Nome AS Filme, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id;

-- 11. Filmes do gênero "Mistério"
SELECT F.Nome AS Filme, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

-- 12. Nome do filme e os atores com seus papéis
SELECT F.Nome AS Filme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
JOIN ElencoFilme EF ON F.Id = EF.IdFilme
JOIN Atores A ON EF.IdAtor = A.Id;
