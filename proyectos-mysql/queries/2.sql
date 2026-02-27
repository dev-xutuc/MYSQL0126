SELECT * FROM series;

SELECT * FROM actores;

SELECT * FROM actuaciones;

SELECT * FROM episodios;

SELECT titulo, año_lanzamiento, genero
FROM series
WHERE genero = 'Ciencia ficcion';

SELECT titulo, rating_imdb, temporada
FROM episodios
WHERE rating_imdb > 9.0
ORDER BY rating_imdb DESC;

SELECT
	s.titulo AS Serie,
    e.titulo AS Episodio
FROM episodios e
INNER JOIN series s ON e.serie_id = s.serie_id;
