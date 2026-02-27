USE netflixdb;

SHOW TABLES;

DESCRIBE series;

DESCRIBE episodios;

DESCRIBE actores;

DESCRIBE actuaciones;

SELECT serie_id FROM series WHERE titulo = 'The Office';
SELECT * FROM episodios WHERE serie_id = 13;

-- SUB CONSULTAS
SELECT *
FROM episodios
WHERE serie_id = (
	SELECT serie_id
    FROM series
    WHERE titulo = 'The Office'
	LIMIT 1
);

SELECT * FROM episodios WHERE serie_id = (SELECT serie_id FROM series WHERE titulo = 'The Office' LIMIT 1);

SELECT *
FROM episodios
WHERE serie_id IN(
	SELECT serie_id
    FROM series
    WHERE genero = 'Ciencia ficcion'
);

SELECT *
FROM episodios
WHERE serie_id IN(
	SELECT serie_id
    FROM series
    WHERE genero IN ('Drama','Drama historico')
);

SELECT titulo
FROM series
WHERE serie_id IN (
	SELECT serie_id
	FROM episodios
    GROUP BY serie_id
    HAVING AVG(rating_imdb) > 8
);

SELECT titulo
FROM series
WHERE serie_id IN (
	SELECT serie_id
    FROM episodios
    GROUP BY serie_id
    HAVING max(duracion) >60

);

SELECT s.titulo
FROM series s 
WHERE EXISTS(
	SELECT 1
    FROM episodios e
    WHERE e.serie_id = s.serie_id
    AND e.rating_imdb >=9.5
);

-- IF
SELECT 	titulo, rating_imdb,
		IF(rating_imdb >= 9, 'Excelente','Regular') AS categoria_rating
FROM episodios;

SELECT 	titulo, rating_imdb,
		IF(rating_imdb >= 9, 'Excelente',
        IF(rating_imdb >=8 , 'Alto', 'Medio/bajo')
        ) AS categoria_rating
FROM episodios;

SELECT 	nombre, YEAR(fecha_nacimiento) AS año_de_nacimiento,
		IF(YEAR(fecha_nacimiento) > 2000, 'muy joven', 'Adulto/mayor') AS categoria_Actor
FROM actores;

-- CASE
SELECT 	titulo, año_lanzamiento,
		CASE
			WHEN año_lanzamiento >= 2020 THEN 'Muy Nueva'
            WHEN año_lanzamiento BETWEEN 2010 AND 2019 THEN 'Reciente'
            WHEN año_lanzamiento BETWEEN 2000 AND 2009 THEN 'moderna'
            ELSE 'Antigua'
		END AS categoria_edad
FROM series;

SELECT 	titulo, genero,
		CASE 
			WHEN genero = 'Drama' THEN 'Dramatico'
            WHEN genero = 'Comedia' THEN 'Divertido'
            WHEN genero IN ('Ciencia ficcion','fantasia') THEN 'Fantastico'
            ELSE 'Otro'
		END AS categoria_genero
FROM series;

-- CAST

SELECT 	titulo,
CAST(año_lanzamiento AS CHAR) AS 'año de lanzamiento en formato de texto'
FROM series;

SELECT titulo, duracion,
CONCAT(titulo, '-' , CAST(duracion AS CHAR), ' minutos') AS descripcion_duracion
FROM episodios;

-- FUNCIONES FECHA
SELECT titulo, fecha_estreno,
YEAR(fecha_estreno) AS año_estreno,
MONTH(fecha_estreno) AS mes_estreno
FROM episodios;