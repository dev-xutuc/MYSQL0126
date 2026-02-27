-- CREAR BASE DE DATOS EMPRESADB

CREATE DATABASE IF NOT EXISTS EmpresaDB;
USE EmpresaDB;


CREATE TABLE IF NOT EXISTS Departamentos (
	depto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(255) NOT NULL,
    ubicacion VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Empleados(
	empleado_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    depto_id INT,
    FOREIGN KEY (depto_id) REFERENCES Departamentos(depto_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Proyectos(
	proyecto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE IF NOT EXISTS AsignacionesDeProyectos(
	asignacion_id INT AUTO_INCREMENT PRIMARY KEY,
    proyecto_id INT,
    empleado_id INT,
    horas_asignadas INT NOT NULL,
    FOREIGN KEY (proyecto_id) REFERENCES Proyectos(proyecto_id),
    FOREIGN KEY (empleado_id) REFERENCES Empleados(empleado_id)
);

CREATE TABLE IF NOT EXISTS LogEmpleados(
	log_id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    fecha_registro DATETIME,
    FOREIGN KEY(empleado_id) REFERENCES Empleados(empleado_id)
);

CREATE DATABASE IF NOT EXISTS UniversidadDB;
USE UniversidadDB;

-- EJERCICIO 1: Aplicar 1NF

CREATE TABLE Estudiantes_Sin_Normalizar(
	nombre_completo VARCHAR(255),
    cursos VARCHAR(500),
    telefonos VARCHAR(255)
);

SELECT * FROM Estudiantes_Sin_Normalizar;

CREATE TABLE Estudiantes(
	nombre VARCHAR(255), 
    apellido VARCHAR(255),
    cursos VARCHAR(500),
    telefonos VARCHAR(255)
);

-- EJERCICIO 2: Aplicar 2NF

CREATE DATABASE IF NOT EXISTS TiendaEnLinea;
USE TiendaEnLinea;

CREATE TABLE Ventas_Sin_Normalizar(
	tienda_id INT,
    producto_id INT,
    nombre_tienda VARCHAR(255),
    direccion_tienda VARCHAR(255),
    nombre_producto VARCHAR(255),
    precio_producto DECIMAL(10,2),
    cantidad_vendida INT,
    fecha_vena date,
	PRIMARY KEY(tienda_id, producto_id, fecha_venta)
);

CREATE TABLE Tiendas(
	tienda_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tienda VARCHAR(255) NOT NULL,
    direccion_tienda VARCHAR(255)
);

CREATE TABLE Productos(
	producto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(255) NOT NULL,
    precio_producto DECIMAL(10,2) NOT NULL
);

CREATE TABLE Ventas(
	venta_id INT AUTO_INCREMENT PRIMARY KEY,
    tienda_id INT,
    producto_id INT,
    cantidad_vendida INT NOT NULL,
    fecha_venta DATE NOT NULL,
    FOREIGN KEY (tienda_id) REFERENCES Tiendas(tienda_id),
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);