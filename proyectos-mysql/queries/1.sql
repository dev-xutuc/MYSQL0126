CREATE DATABASE blogdb;

USE blogdb;

-- usuarios

CREATE TABLE blogdb.usuarios(
	userID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NULL,
    email VARCHAR(45) NULL,
    fechaRegistro DATE NULL,
    PRIMARY KEY(userID)
);

SELECT * FROM usuarios;

-- comentarios

CREATE TABLE comentarios(
	commentID INT NOT NULL AUTO_INCREMENT,
    postID INT NULL,
    userID INT NULL,
    contenido TEXT NULL,
    fechaComentario DATE NULL,
    PRIMARY KEY(commentID)
);
-- publicaciones


-- insersión de datos en una tabla
INSERT INTO usuarios(nombre, email, fechaRegistro)
VALUES
	('Juan','juan.ejemplo@hotmail.com','2024-06-01'),
    ('Maria','maria.garcia@gmail.com','2024-06-05'),
    ('Carlos','carlos.lopez@yahoo.com','2024-06-10');
    
SELECT * FROM usuarios;