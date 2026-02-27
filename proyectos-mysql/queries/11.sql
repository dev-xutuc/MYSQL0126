-- VISTAS

CREATE VIEW VistaEmpleadosTecnologia AS
SELECT nombre, apellido, email
FROM Empleados
WHERE depto_id = 1;

SELECT * FROM vistaempleadostecnologia;

-- VISTAS MATERIALIZADAS

CREATE VIEW VistaEmpleadosProyecto AS
SELECT
	Empleados.nombre,
    Proyectos.nombre AS Proyecto
FROM Empleados
JOIN asignacionesdeproyectos
	ON Empleados.empleado_id = asignacionesdeproyectos.empleado_id
JOIN Proyectos
	ON asignacionesdeproyectos.proyecto_id = Proyectos.proyecto_id;
    
SELECT * FROM VistaEmpleadosProyecto;


-- TRIGGERS (DISPARADORES)

CREATE TABLE IF NOT EXISTS LogEmpleados(
	log_id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    fecha_registro DATETIME
);

DELIMITER $$

CREATE TRIGGER RegistrarNuevoEmpleado
AFTER INSERT ON Empleados
FOR EACH ROW
BEGIN
	INSERT INTO LogEmpleados(empleado_id, fecha_registro)
    VALUES (NEW.empleado_id, NOW());
END $$

DELIMITER ;

INSERT INTO Empleados(nombre, apellido, email)
VALUES ('Luis','Xutuc','luis.xutuc@example.com');

SELECT * FROM Empleados;

SELECT * FROM LogEmpleados;

-- PROYECTO
CREATE VIEW VistaEmpleadosProyectos AS
SELECT
	E.nombre AS NombreEmpleado,
    E.apellido AS ApellidoEmpleado,
    P.nombre AS NombreProyecto
FROM Empleados E
JOIN AsignacionesDeProyectos A
	ON E.empleado_id = A.empleado_id
JOIN Proyectos P
	ON A.proyecto_id = P.proyecto_id;


SELECT * FROM vistaempleadosproyecto;

SELECT * FROM vistaempleadosproyecto
WHERE Nombre = 'Ana';

SELECT
	NombreEmpleado,
    COUNT(NombreProyecto) AS TotalProyectos
FROM VistaEmpleadosProyectos
GROUP BY NombreEmpleado;

-- PRACTICA DE TRIGGERS
DELIMITER $$

CREATE TRIGGER ValidarEmail
BEFORE INSERT ON empleados
FOR EACH ROW
BEGIN
	IF New.email NOT LIKE '%@%' THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Email inválido: debe contener @';
    END IF;
END $$

DELIMITER ;

INSERT INTO Empleados(nombre, apellido, email)
VALUES ('Genesis','Gonzalea','example.com');


CREATE TABLE IF NOT EXISTS HistorialSalarios(
	historial_id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    salario_anterior DECIMAL(10,2),
    salario_nuevo DECIMAL(10,2),
    fecha_cambio DATETIME
);

DELIMITER $$

CREATE TRIGGER RegistrarCambioSalario
AFTER UPDATE ON Empleados
FOR EACH ROW
BEGIN
	IF OLD.salario != NEW.salarioo THEN
		INSERT INTO HistorialSalarios(
			empleado_id,
            salario_anterior,
            salario_nuevo,
            fecha_cambio
        )
        VALUES (
			NEW.empleado_id,
            OLD.salario,
            NEW.salario,
            NOW()
        );
	END IF;
END $$

DELIMITER ;