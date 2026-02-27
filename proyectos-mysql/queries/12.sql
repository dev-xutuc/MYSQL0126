-- PROBLEMA #1(FÁCIL)
-- Genera un reporte que muestre todos los empleados con los
-- proyectos a los que estan asignados y las horas dedicadas
-- Ordena por nombre del empleado, dentro de cada empleado
-- por horas asignadas en orden descendente

SELECT * FROM empleados;

SELECT 
	E.nombre			AS 'Nombre Empleado',
    E.apellido			AS 'Apellido Empleado',
    P.nombre			AS 'Nombre proyecto',
    A.horas_asignadas	AS 'Horas asignadas'
FROM
	empleados E
    JOIN asignacionesdeproyectos A ON E.empleado_id = A.empleado_id
    JOIN proyectos P ON A.proyecto_id = P.proyecto_id
ORDER BY
	E.nombre,
    E.apellido,
    A.horas_asignadas DESC;
    
    
-- PROBLEMA 2
-- El área de Recursos Humanos necesita saber cuantas horas
-- totales ha acumulado cada departamento en proyectos.
-- Muestra el nombre del departamento y el total de horas,
-- Ordenado de mayor a menbor. Incluye departamentos con 0 horas.

SELECT
	D.nombre							AS 'Departamento',
    COALESCE(SUM(A.horas_asignadas),0)	AS 'Total Horas'
FROM
	departamentos D
    LEFT JOIN empleados					E ON D.depto_id = E.depto_id
    LEFT JOIN asignacionesdeproyectos	A ON E.empleado_id = A.empleado_id
GROUP BY
	D.nombre
ORDER BY 2 DESC;

-- PROBLEMA 3
-- El gerente quiere que empleados No tienen ningún
-- proyecto asignado para considerar reasignarlos.
-- Muestra nombre, apellido y departamentos de esos empleados

SELECT
	E.nombre 							AS 'Nombre',
    E.apellido							AS 'Apellido',
    D.nombre							AS 'Deparatamento'
FROM
	Empleados E
    JOIN Departamentos D				ON E.depto_id = D.depto_id
    LEFT JOIN asignacionesdeproyectos A	ON E.empleado_id = A.empleado_id
WHERE
	A.asignacion_id IS NULL
ORDER BY 
	D.nombre, E.nombre;
    
    
-- PROBLEMA #4
-- Genera un reporte de proyectos que muestre cuantos empleados
-- tiene asignado cada proyecto. Muestra solo los proyectos
-- con al menos 2 empleados asignados, ordenados de mayor a menor

SELECT
	P.nombre							AS 'Proyecto',
    COUNT(A.empleado_id)				AS 'Total Empleados Asignados'
FROM
	Proyectos P
    JOIN asignacionesdeproyectos A 		ON P.proyecto_id = A.proyecto_id
GROUP BY
	P.proyecto_id,
    p.nombre
HAVING COUNT(A.empleado_id) >= 2
ORDER BY 2 DESC;

-- PROBLEMA #5
-- Para cada proyecto, muestra el empleado que tiene asignadas
-- La mayor cantidad de horas. Si hay emplate, muestra todos.
-- Muestra: nombre del proyecto, nombre del empleado y las horas

SELECT
	P.nombre							AS 'Proyecto',
    E.nombre							AS 'Nombre Empleado',
    E.apellido							AS 'Apellido Empleado',
    A.horas_asignadas					AS 'Horas Asignadas'
FROM
	asignacionesdeproyectos A
    JOIN proyectos P 					ON A.proyecto_id = P.proyecto_id
    JOIN Empleados E					ON A.empleado_id = E.empleado_id
WHERE
	A.horas_asignadas = (
		SELECT MAX(A2.horas_asignadas)
        FROM asignacionesdeproyectos A2
		WHERE A2.proyecto_id = A.proyecto_id
    )
ORDER BY
	p.nombre;
    
-- PROBLEMA 6
-- El CEO quiere identificar a los empleados más comprometidos
-- aquellos que estan asignados a más de un proyecto.
-- Muestra nombre, apellido y la cantidad de proyectos en los
-- que participan, ordenado de mayor a menor


SELECT
	E.nombre							AS 'Nombre',
    E.apellido							AS 'Apellido',
    COUNT(DISTINCT A.proyecto_id)		AS 'Cantidad de Proyectos'
FROM 
	Empleados E
    JOIN asignacionesdeproyectos A 		ON E.empleado_id = A.empleado_id
GROUP BY
	E.empleado_id,
    E.nombre,
    E.apellido
HAVING COUNT(DISTINCT A.proyecto_id) > 1
ORDER BY 3 DESC;