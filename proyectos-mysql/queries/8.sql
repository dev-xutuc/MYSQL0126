-- CTES

WITH ListaEpisodios AS(
	SELECT serie_id, episodio_id, titulo
	FROM episodios
)
SELECT * FROM ListaEpisodios;

WITH ListaEpisodios AS (
	SELECT serie_id, episodio_id, titulo
    FROM episodios
),
ListaSeries AS (
	SELECT serie_id, descripcion
    FROM series
)
SELECT * FROM ListaEpisodios
LEFT JOIN ListaSeries
ON ListaEpisodios.serie_id = ListaSeries.serie_id;

WITH PrimerEpisodio AS(
	SELECT serie_id, MIN(fecha_estreno) AS fecha_primer_episodio
    FROM episodios
    GROUP BY serie_id
)
SELECT
	s.titulo AS 'Titulo de la serie',
    pe.fecha_primer_episodio AS 'Fecha del primer episodio'
FROM series s 
JOIN PrimerEpisodio pe ON s.serie_id = pe.serie_id
ORDER BY pe.fecha_primer_episodio ASC;

WITH SeriesPorAño AS (
	SELECT
		año_lanzamiento,
        COUNT(*) AS total_series
	FROM series
    WHERE genero = 'Ciencia ficción'
    GROUP BY año_lanzamiento
)
SELECT * from SeriesPorAño
ORDER BY año_lanzamiento;

-- WINDOWS FUNCTIONS
-- ROW_NUMBER()

SELECT
	titulo,
    año_lanzamiento,
    ROW_NUMBER() OVER(ORDER BY año_lanzamiento DESC) AS orden_lanzamiento
FROM series;

SELECT
	titulo,
    año_lanzamiento,
    ROW_NUMBER() OVER(ORDER BY año_lanzamiento ASC) AS orden_lanzamiento
FROM series;

WITH OrdenSeries AS(
	SELECT
		titulo,
        año_lanzamiento,
        ROW_NUMBER() OVER(ORDER BY año_lanzamiento ASC) AS orden_lanzamiento
        FROM series
)
SELECT * FROM OrdenSeries
WHERE orden_lanzamiento IN (1,2,3);

-- PARTITION BY
SELECT
	titulo,
    genero,
    año_lanzamiento,
    ROW_NUMBER() OVER(
		PARTITION BY genero
        ORDER BY año_lanzamiento DESC
    ) AS ranking_por_genero
FROM series;

SELECT
	temporada,
    titulo,
    fecha_estreno,
    ROW_NUMBER() OVER(
		PARTITION BY temporada
        ORDER BY fecha_estreno DESC
) AS ranking_temporada
FROM episodios;

SELECT
	temporada,
    titulo,
    rating_imdb,
    ROW_NUMBER() OVER(
		PARTITION BY temporada
        ORDER BY rating_imdb DESC
    ) AS 'Ranking IMDB'
FROM episodios
WHERE serie_id = 2
ORDER BY temporada, 'Ranking IMDB';


-- RANK

SELECT
	titulo,
    rating_imdb,
    ROW_NUMBER() OVER(ORDER BY rating_imdb DESC) AS rating_imdb
FROM episodios;

SELECT
	titulo,
    rating_imdb,
    RANK() OVER(ORDER BY rating_imdb DESC) AS rating_imdb
FROM episodios;

SELECT
	titulo,
    rating_imdb,
    DENSE_RANK() OVER(ORDER BY rating_imdb DESC) AS rating_imdb
FROM episodios;

SELECT
	titulo,
    rating_imdb,
    RANK() OVER(ORDER BY rating_imdb DESC) AS ranking_imdb
FROM episodios
ORDER BY ranking_imdb;

SELECT 
	titulo,
    duracion,
    DENSE_RANK() OVER(ORDER BY duracion DESC) AS
    ranking_por_duracion
FROM episodios
ORDER BY ranking_por_duracion;