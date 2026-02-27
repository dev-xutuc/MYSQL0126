SELECT * FROM series;

SELECT * FROM actuaciones;

-- INNER JOIN

SELECT * FROM series
INNER JOIN actuaciones
ON series.serie_id = actuaciones.serie_id;

SELECT titulo, personaje
FROM series
INNER JOIN actuaciones
ON series.serie_id = actuaciones.serie_id;

SELECT 
	s.titulo, 
    a.personaje
FROM series AS s
INNER JOIN actuaciones AS a
ON s.serie_id = a.serie_id;

SELECT 
	s.titulo, 
    a.personaje
FROM series s
JOIN actuaciones a
ON s.serie_id = a.serie_id;

-- FILTRAR JOIN
SELECT 
	s.titulo,
    a.personaje
FROM series AS s
JOIN actuaciones AS a
ON s.serie_id = a.serie_id
WHERE s.titulo = 'The Crown';

SELECT * FROM series
INNER JOIN episodios
ON series.serie_id = episodios.serie_id;

SELECT
	s.titulo AS titulo_serie,
    e.titulo AS titulo_episodio,
    e.duracion
FROM series AS s
INNER JOIN episodios AS e
ON s.serie_id = e.serie_id
WHERE s.titulo = 'Stranger Things';

-- LEFT JOIN
SELECT * FROM series;
SELECT * FROM episodios;

SELECT 
	series.titulo AS 'Titulo de la serie',
    episodios.titulo AS 'Titulo de los episodios'
FROM series
LEFT JOIN episodios
ON series.serie_id = episodios.serie_id
ORDER BY series.titulo;

SELECT 
	s.titulo AS 'Titulo de la serie',
    e.titulo AS 'Titulo del episodio',
    e.rating_imdb AS 'Rating IMDB'
FROM series s
LEFT JOIN episodios e
ON s.serie_id = e.serie_id
ORDER BY s.titulo ASC;

SELECT 
	s.titulo AS 'Titulo de la Serie',
    e.titulo AS 'Titulo del episodio',
    e.rating_imdb AS 'Rating IMDB'
FROM series s
LEFT JOIN episodios e
ON s.serie_id = e.serie_id
WHERE s.titulo = 'Stranger Things'
ORDER BY e.rating_imdb DESC;

-- RIGHT JOIN

SELECT 
	s.titulo AS 'Titulo de la Serie',
    e.titulo AS 'Titulo del episodio',
    e.rating_imdb AS 'Rating IMDB'
FROM series s
RIGHT JOIN episodios e
ON s.serie_id = e.serie_id
WHERE s.titulo = 'Stranger Things'
ORDER BY e.rating_imdb DESC;

SELECT 
	s.titulo AS 'titulo de la serie',
    e.titulo AS 'titulo del episodio',
    e.duracion AS 'Duración'
FROM episodios e
RIGHT JOIN series s
ON e.serie_id = s.serie_id
WHERE e.duracion > 30
ORDER BY s.titulo;

-- UNION ALL
SELECT * FROM series
WHERE genero = 'Ciencia ficción';

SELECT * FROM series
WHERE genero = 'Drama';


SELECT * FROM series
WHERE genero = 'Ciencia ficción'
UNION ALL
SELECT * FROM series
WHERE genero = 'Drama';