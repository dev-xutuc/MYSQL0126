DROP DATABASE empresadb;

CREATE DATABASE IF NOT EXISTS EmpresaDB;

USE EmpresaDB;

CREATE TABLE IF NOT EXISTS Departamentos(
	depto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    ubicacion VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Empleados(
	empleado_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    depto_id INT,
    FOREIGN KEY(depto_id) REFERENCES Departamentos(depto_id) ON DELETE SET NULL
);

ALTER TABLE Departamentos
ADD COLUMN email_jefe VARCHAR(255);

ALTER TABLE Departamentos
MODIFY COLUMN ubicacion VARCHAR(500);

ALTER TABLE Departamentos
DROP COLUMN email_jefe;

ALTER TABLE empleados
ADD CONSTRAINT fk_depto
FOREIGN KEY (depto_id) REFERENCES Departamentos(depto_id);

DROP TABLE IF EXISTS asignacionesdeproyectos;

INSERT INTO Departamentos(nombre,ubicacion)
VALUES ('Recursos Humanos','Edificion B');

INSERT INTO Departamentos(nombre,ubicacion) VALUES
('Marketing','Edificio Central'),
('Tecnología','Edificio Central'),
('Ventas','Edificio C');

SELECT * FROM Departamentos;

SELECT * FROM Departamentos
WHERE ubicacion  = 'Edificio Central';

SELECT nombre, ubicacion FROM departamentos;

SET SQL_SAFE_UPDATES = 0;

UPDATE departamentos
SET ubicacion = 'Edificio M'
WHERE depto_id = 3;

UPDATE departamentos
SET ubicacion = 'Edificio A',
	nombre = 'RRHH'
WHERE depto_id = 1;

DELETE FROM departamentos
WHERE depto_id = 3;

SET SQL_SAFE_UPDATES = 1;


SHOW TABLE STATUS LIKE 'departamentos';

SELECT LAST_INSERT_ID();

CREATE INDEX idx_email ON empleados(email);

CREATE INDEX idx_nombre ON empleados(nombre);

SHOW INDEX FROM Empleados;

CREATE USER 'desarrollador'@'localhost'
IDENTIFIED BY '123456';

CREATE USER 'Analista'@'%'
IDENTIFIED BY '123456';

CREATE USER 'admin'@'192.168.1.100'
IDENTIFIED BY '123456';

GRANT SELECT ON EmpresaDB.*
TO 'analista'@'%';

GRANT SELECT, INSERT, UPDATE, DELETE
ON EmpresaDB.*
TO 'desarrollador'@'localhost';

REVOKE ALL PRIVILEGES ON EmpresaDB.*
FROM 'desarrollador'@'localhost';