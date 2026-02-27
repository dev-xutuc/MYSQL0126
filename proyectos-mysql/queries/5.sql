SELECT * FROM series;

SELECT * FROM actores;

SELECT * FROM actuaciones;

SELECT * FROM episodios;

-- OPERACIONES CRUD

-- INSERT

INSERT INTO series (titulo, descripcion, año_lanzamiento, genero)
VALUES
('Stranger Things','Misterio sobrenatural en los 80s',2016,'Ciencia Ficción'),
('The Crown','Historia de la familia real britanica',2016,'Drama');

-- SELECT 
SELECT titulo, genero FROM series;

SELECT * FROM series
WHERE titulo LIKE '%Breaking%';

-- UPDATE
UPDATE series
SET genero = 'Thriller'
WHERE serie_id = 3;

-- DELETE
DELETE FROM series
WHERE serie_id = 41;