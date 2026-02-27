DROP DATABASE IF EXISTS academia_fibonacci;
CREATE DATABASE academia_fibonacci;
USE academia_fibonacci;

-- ============================================================
-- TABLA: estudiantes (25 registros)
-- ============================================================
CREATE TABLE estudiantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    edad INT,
    carrera VARCHAR(100),
    promedio DOUBLE DEFAULT 0,
    activo BOOLEAN DEFAULT TRUE,
    fecha_inscripcion DATE DEFAULT (CURRENT_DATE)
);

INSERT INTO estudiantes (nombre, email, edad, carrera, promedio, activo, fecha_inscripcion) VALUES
-- Ingenieria en Sistemas (8 estudiantes)
('Ana Garcia', 'ana.garcia@email.com', 20, 'Ingenieria en Sistemas', 85.50, TRUE, '2023-01-15'),
('Maria Lopez', 'maria.lopez@email.com', 19, 'Ingenieria en Sistemas', 92.10, TRUE, '2023-01-18'),
('Sofia Ramirez', 'sofia.ramirez@email.com', 20, 'Ingenieria en Sistemas', 88.70, TRUE, '2023-02-01'),
('Diego Hernandez', 'diego.hernandez@email.com', 21, 'Ingenieria en Sistemas', 79.30, TRUE, '2023-02-10'),
('Valentina Torres', 'valentina.torres@email.com', 22, 'Ingenieria en Sistemas', 94.50, TRUE, '2023-01-20'),
('Andres Morales', 'andres.morales@email.com', 20, 'Ingenieria en Sistemas', 67.80, TRUE, '2023-03-05'),
('Camila Ruiz', 'camila.ruiz@email.com', 19, 'Ingenieria en Sistemas', 73.40, TRUE, '2023-02-28'),
('Sebastian Castro', 'sebastian.castro@email.com', 23, 'Ingenieria en Sistemas', 81.20, FALSE, '2022-08-15'),

-- Ingenieria Industrial (6 estudiantes)
('Luis Martinez', 'luis.martinez@email.com', 22, 'Ingenieria Industrial', 78.30, TRUE, '2023-01-22'),
('Fernando Diaz', 'fernando.diaz@email.com', 21, 'Ingenieria Industrial', 82.60, TRUE, '2023-02-14'),
('Patricia Vega', 'patricia.vega@email.com', 20, 'Ingenieria Industrial', 89.20, TRUE, '2023-01-25'),
('Ricardo Soto', 'ricardo.soto@email.com', 24, 'Ingenieria Industrial', 71.50, TRUE, '2022-06-10'),
('Monica Flores', 'monica.flores@email.com', 22, 'Ingenieria Industrial', 76.80, TRUE, '2023-03-01'),
('Gabriel Mendez', 'gabriel.mendez@email.com', 21, 'Ingenieria Industrial', 84.30, FALSE, '2022-09-20'),

-- Ingenieria Mecanica (4 estudiantes)
('Carlos Perez', 'carlos.perez@email.com', 21, 'Ingenieria Mecanica', 80.00, TRUE, '2023-01-28'),
('Jorge Navarro', 'jorge.navarro@email.com', 23, 'Ingenieria Mecanica', 75.40, TRUE, '2022-07-15'),
('Andrea Gutierrez', 'andrea.gutierrez@email.com', 20, 'Ingenieria Mecanica', 91.30, TRUE, '2023-02-20'),
('Marco Jimenez', 'marco.jimenez@email.com', 22, 'Ingenieria Mecanica', 68.90, TRUE, '2023-03-10'),

-- Ingenieria Civil (4 estudiantes)
('Laura Sanchez', 'laura.sanchez@email.com', 21, 'Ingenieria Civil', 87.60, TRUE, '2023-01-30'),
('Roberto Silva', 'roberto.silva@email.com', 24, 'Ingenieria Civil', 72.40, TRUE, '2022-05-18'),
('Daniela Romero', 'daniela.romero@email.com', 20, 'Ingenieria Civil', 95.20, TRUE, '2023-02-05'),
('Oscar Vargas', 'oscar.vargas@email.com', 23, 'Ingenieria Civil', 63.50, FALSE, '2022-03-22'),

-- Medicina (3 estudiantes)
('Isabella Reyes', 'isabella.reyes@email.com', 22, 'Medicina', 96.80, TRUE, '2023-01-10'),
('Miguel Angel Cruz', 'miguel.cruz@email.com', 25, 'Medicina', 88.40, TRUE, '2022-01-15'),
('Carolina Herrera', 'carolina.herrera@email.com', 23, 'Medicina', 91.70, TRUE, '2022-08-20');

-- ============================================================
-- TABLA: profesores (10 registros)
-- ============================================================
CREATE TABLE profesores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    especialidad VARCHAR(100),
    salario DOUBLE,
    fecha_contratacion DATE,
    activo BOOLEAN DEFAULT TRUE
);

INSERT INTO profesores (nombre, email, especialidad, salario, fecha_contratacion, activo) VALUES
('Dr. Juan Carlos Mejia', 'jc.mejia@academia.edu', 'Programacion', 15000.00, '2018-03-15', TRUE),
('Ing. Maria Elena Paz', 'me.paz@academia.edu', 'Base de Datos', 12500.00, '2019-06-01', TRUE),
('Dr. Roberto Fuentes', 'r.fuentes@academia.edu', 'Inteligencia Artificial', 18000.00, '2017-01-20', TRUE),
('Ing. Carmen Rosa Lopez', 'cr.lopez@academia.edu', 'Redes', 11000.00, '2020-02-10', TRUE),
('Dr. Fernando Castillo', 'f.castillo@academia.edu', 'Matematicas', 14000.00, '2016-08-25', TRUE),
('Ing. Sofia Alejandra Ruiz', 'sa.ruiz@academia.edu', 'Programacion Web', 13500.00, '2021-01-05', TRUE),
('Dr. Miguel Torres', 'm.torres@academia.edu', 'Fisica', 13000.00, '2019-09-12', FALSE),
('Ing. Patricia Morales', 'p.morales@academia.edu', 'Electronica', 12000.00, '2020-07-18', TRUE),
('Dr. Alejandro Vega', 'a.vega@academia.edu', 'Quimica', 14500.00, '2018-11-30', TRUE),
('Ing. Diana Flores', 'd.flores@academia.edu', 'Programacion', 11500.00, '2022-03-01', TRUE);

-- ============================================================
-- TABLA: cursos (12 registros)
-- ============================================================
CREATE TABLE cursos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    codigo VARCHAR(20) UNIQUE,
    creditos INT,
    profesor_id INT,
    cupo_maximo INT DEFAULT 30,
    activo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (profesor_id) REFERENCES profesores(id)
);

INSERT INTO cursos (nombre, codigo, creditos, profesor_id, cupo_maximo, activo) VALUES
('Programacion I', 'PRG101', 5, 1, 35, TRUE),
('Programacion II', 'PRG201', 5, 1, 30, TRUE),
('Base de Datos I', 'BDD101', 4, 2, 30, TRUE),
('Base de Datos II', 'BDD201', 4, 2, 25, TRUE),
('Inteligencia Artificial', 'IAR301', 5, 3, 20, TRUE),
('Redes de Computadoras', 'RED201', 4, 4, 28, TRUE),
('Calculo I', 'MAT101', 5, 5, 40, TRUE),
('Calculo II', 'MAT201', 5, 5, 35, TRUE),
('Desarrollo Web', 'WEB101', 4, 6, 30, TRUE),
('Fisica I', 'FIS101', 4, 7, 35, FALSE),
('Electronica Digital', 'ELE201', 4, 8, 25, TRUE),
('Programacion III', 'PRG301', 5, 10, 25, TRUE);

-- ============================================================
-- TABLA: inscripciones (40 registros)
-- ============================================================
CREATE TABLE inscripciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    estudiante_id INT,
    curso_id INT,
    fecha_inscripcion DATE,
    nota_final DOUBLE,
    estado VARCHAR(20) DEFAULT 'Cursando',
    FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

INSERT INTO inscripciones (estudiante_id, curso_id, fecha_inscripcion, nota_final, estado) VALUES
-- Ana Garcia
(1, 1, '2023-01-20', 88.50, 'Aprobado'),
(1, 3, '2023-01-20', 92.00, 'Aprobado'),
(1, 7, '2023-01-20', 78.50, 'Aprobado'),
-- Maria Lopez
(2, 1, '2023-01-22', 95.00, 'Aprobado'),
(2, 3, '2023-01-22', 97.50, 'Aprobado'),
(2, 9, '2023-06-15', NULL, 'Cursando'),
-- Sofia Ramirez
(3, 2, '2023-06-10', NULL, 'Cursando'),
(3, 4, '2023-06-10', NULL, 'Cursando'),
-- Diego Hernandez
(4, 1, '2023-02-15', 72.00, 'Aprobado'),
(4, 7, '2023-02-15', 65.50, 'Aprobado'),
(4, 6, '2023-06-20', NULL, 'Cursando'),
-- Valentina Torres
(5, 1, '2023-01-25', 98.00, 'Aprobado'),
(5, 2, '2023-06-12', NULL, 'Cursando'),
(5, 5, '2023-06-12', NULL, 'Cursando'),
-- Luis Martinez
(9, 1, '2023-01-28', 75.50, 'Aprobado'),
(9, 7, '2023-01-28', 82.00, 'Aprobado'),
(9, 8, '2023-06-18', NULL, 'Cursando'),
-- Fernando Diaz
(10, 3, '2023-02-20', 85.00, 'Aprobado'),
(10, 6, '2023-02-20', 79.50, 'Aprobado'),
-- Patricia Vega
(11, 1, '2023-01-30', 91.00, 'Aprobado'),
(11, 3, '2023-01-30', 88.50, 'Aprobado'),
(11, 5, '2023-06-25', NULL, 'Cursando'),
-- Carlos Perez
(15, 7, '2023-02-01', 83.00, 'Aprobado'),
(15, 8, '2023-06-20', NULL, 'Cursando'),
(15, 11, '2023-06-20', NULL, 'Cursando'),
-- Andrea Gutierrez
(17, 1, '2023-02-25', 94.50, 'Aprobado'),
(17, 7, '2023-02-25', 96.00, 'Aprobado'),
(17, 2, '2023-06-28', NULL, 'Cursando'),
-- Laura Sanchez
(19, 7, '2023-02-05', 89.00, 'Aprobado'),
(19, 8, '2023-06-15', NULL, 'Cursando'),
-- Daniela Romero
(21, 1, '2023-02-10', 97.00, 'Aprobado'),
(21, 3, '2023-02-10', 98.50, 'Aprobado'),
(21, 5, '2023-06-22', NULL, 'Cursando'),
-- Isabella Reyes
(23, 7, '2023-01-15', 99.00, 'Aprobado'),
(23, 8, '2023-06-10', NULL, 'Cursando'),
-- Estudiantes reprobados
(6, 1, '2023-03-10', 58.00, 'Reprobado'),
(6, 7, '2023-03-10', 52.50, 'Reprobado'),
(18, 1, '2023-03-15', 55.00, 'Reprobado'),
(22, 7, '2023-03-20', 48.00, 'Reprobado'),
(12, 3, '2023-02-28', 62.00, 'Reprobado');
