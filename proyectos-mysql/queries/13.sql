CREATE DATABASE IF NOT EXISTS tienda;

USE tienda;

SHOW DATABASES;

CREATE TABLE IF NOT EXISTS productos (
    id               INT          PRIMARY KEY AUTO_INCREMENT,
    nombre           VARCHAR(100) NOT NULL,
    precio           DOUBLE       NOT NULL,
    stock            INT          DEFAULT 0,
    categoria        VARCHAR(50),
    fecha_registro   DATE
);

INSERT INTO productos (nombre, precio, stock, categoria, fecha_registro)
VALUES ('Laptop HP', 5999.99, 10, 'Electronica', '2024-01-15');

-- ============================================================
-- Insertar varios productos en una sola sentencia
-- ============================================================
INSERT INTO productos (nombre, precio, stock, categoria, fecha_registro)
VALUES
    ('Mouse Logitech',    199.99,  50, 'Accesorios', '2024-01-15'),
    ('Teclado Mecanico',  599.99,  25, 'Accesorios', '2024-01-16'),
    ('Monitor Samsung',  2499.99,  15, 'Electronica', '2024-01-16'),
    ('Audifonos Sony',    899.99,  30, 'Audio',       '2024-01-17');
    
INSERT INTO productos
VALUES (NULL, 'Webcam HD', 349.99, 20, 'Accesorios', '2024-01-17');

SELECT * FROM productos;

SELECT nombre, precio FROM productos;

SELECT * FROM productos WHERE categoria = 'Electronica';