-- SELECCIONAR COLUMNAS ESPECIFICAS

SELECT titulo, genero FROM series;

SELECT nombre, fecha_nacimiento FROM actores;

SELECT titulo, temporada, rating_imdb FROM episodios;

-- ALIAS AS

SELECT 
	titulo AS Nombre_Serie,
    año_lanzamiento AS Año,
    genero AS Categoria
FROM series;

-- WHERE

SELECT titulo, año_lanzamiento
FROM series
WHERE año_lanzamiento > 2015;

SELECT titulo, año_lanzamiento, genero
FROM series
WHERE año_lanzamiento = 2016;

SELECT titulo, rating_imdb, temporada
FROM episodios
WHERE rating_imdb > 9.0;

SELECT titulo, duracion, temporada
FROM episodios
WHERE duracion < 50;

SELECT nombre, fecha_nacimiento
FROM actores
WHERE fecha_nacimiento > '1990-01-01';

SELECT nombre, fecha_nacimiento
FROM actores
WHERE fecha_nacimiento < '1970-01-01';

-- YYYY-MM-DD

-- OPERADORES AND, OR, NOT

SELECT titulo, año_lanzamiento, genero
FROM series
WHERE genero = 'Drama' AND año_lanzamiento > 2000;

SELECT titulo, temporada, rating_imdb
FROM episodios
WHERE temporada = 1 AND rating_imdb	> 9.0;

SELECT titulo, duracion, rating_imdb
FROM episodios
WHERE duracion < 50 AND rating_imdb > 8.5;

SELECT titulo, genero
FROM series
WHERE genero = 'Drama' OR genero = 'Comedia';

SELECT titulo, genero
FROM series
WHERE genero = 'Fantasia' OR genero = 'Ciencia ficcion';

SELECT titulo, rating_imdb, temporada
FROM episodios
WHERE rating_imdb = 10 OR rating_imdb <8;

SELECT titulo, genero
FROM series
WHERE NOT genero = 'Drama';

SELECT titulo, genero
FROM series
WHERE genero <> 'Drama';

-- ORDER BY
SELECT titulo, año_lanzamiento, genero
FROM series
ORDER BY titulo ASC;

SELECT titulo, año_lanzamiento, genero
FROM series
ORDER BY año_lanzamiento DESC;

SELECT titulo, año_lanzamiento, genero
FROM series
ORDER BY año_lanzamiento ASC;

SELECT titulo, rating_imdb, temporada
FROM episodios
ORDER BY rating_imdb DESC;

SELECT titulo, rating_imdb, temporada
FROM episodios
ORDER BY duracion ASC;

SELECT titulo, temporada, rating_imdb
FROM episodios
ORDER BY temporada ASC, rating_imdb DESC;

-- LIMIT
SELECT titulo, año_lanzamiento
FROM SERIES
LIMIT 5;

SELECT titulo, rating_imdb, temporada
FROM episodios
ORDER BY rating_imdb DESC 
LIMIT 3;

SELECT nombre, fecha_nacimiento
FROM actores
ORDER BY fecha_nacimiento DESC
LIMIT 5;

-- LIKE

SELECT titulo, genero
FROM series
WHERE titulo like 'The%';


SELECT titulo, genero
FROM series
WHERE titulo like '%s';


SELECT titulo, genero
FROM series
WHERE titulo like '%Black%';

SELECT titulo, genero
FROM series
WHERE titulo NOT LIKE 'The%';

-- IN BETWEEN
SELECT titulo, genero
FROM series
WHERE genero in ('Drama','Comedia','Fantasía');

SELECT titulo, genero
FROM series
WHERE genero NOT IN  ('Drama','Comedia','Fantasía');

SELECT titulo, año_lanzamiento
FROM series
WHERE año_lanzamiento BETWEEN 2010 AND 2018;