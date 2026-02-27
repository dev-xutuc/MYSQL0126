-- FUNCIONES DE MANIPULACIÓN DE TEXTO

-- UPPER

SELECT UPPER(titulo) AS Titulo_Mayusculas
FROM series;

-- LOWER

SELECT LOWER(nombre) as nombre_minusculas
FROM actores;

-- CONCAT
SELECT CONCAT(titulo, '(', año_lanzamiento,')') AS Titulo_añó
FROM series;

-- SUBSTRING

SELECT titulo, SUBSTRING(titulo, 1,5) AS Extracto_titulo
FROM episodios;

-- LENGTH
SELECT titulo, LENGTH(titulo) AS Longitud_titulo
FROM series;

-- FUNCIONES MATEMÁTICAS EN SQL

--  ROUND()

SELECT
	titulo, 
    duracion / 60.0 AS HORAS_COMPLETA,
    ROUND(duracion / 60.0,2) HORAS_COMPLETA_REDONDEADO
FROM episodios;


-- CEILING
SELECT 
	titulo,
    duracion,
    CEILING(duracion /60) AS HORAS_COMPLETAS
FROM episodios;

SELECT
	titulo,
    duracion,
    FLOOR(duracion /60) AS HORAS_COMPLETAS
FROM episodios;

SELECT
	UPPER(LEFT(titulo,1)) AS inicial,
    CONCAT(titulo, ' - Temporada ' , temporada) AS Descripcion_completa,
    CONCAT(FLOOR(duracion/60), ' horas ', duracion%60, ' minutos ') AS Duración_Formateada,
    ROUND(rating_imdb, 1) AS rating_redondeado
FROM episodios
ORDER BY rating_imdb DESC 
LIMIT 10;

SELECT
	titulo AS titulo_original,
    LENGTH(titulo) AS Longitud,
    SUBSTRING(titulo, 1,20) AS Titulo_corto,
    CONCAT(ROUND(rating_imdb,2), '/10') AS Rating_Formateado,
    CASE
		WHEN LENGTH(titulo) > 50 THEN 'Muy Largo'
        WHEN LENGTH(titulo) >30 THEN 'Largo'
        ELSE 'Normal'
	END AS Categoria_longitud
FROM episodios
ORDER BY LENGTH(titulo) DESC;


SELECT 
	UPPER(s.titulo) AS SERIE,
    CONCAT('Lanzada en ', año_lanzamiento) AS INFO_LANZAMIENTO,
    COUNT(e.episodio_id) AS TOTAL_EPISODIOS,
    CONCAT(CEIL(AVG(e.duracion)/60), 'horas'), 
    ROUND(AVG(e.duracion)%60,0), 'minutos' AS DURACION_PROMEDIO,
    ROUND(AVG(e.rating_imdb),2) AS RATING_PROMEDIO,
    CONCAT(ROUND(SUM(e.duracion)/60.0,1), 'horas') AS DURACION_TOTAL
FROM series s 
JOIN episodios e ON s.serie_id = e.serie_id
GROUP BY s.serie_id
HAVING COUNT(e.episodio_id) >=10
ORDER BY rating_promedio DESC;