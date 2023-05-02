CREATE VIEW V_PERSONAL_DOCENTE
AS SELECT e.id_empleado clave_empleado, e.nombre || ' ' || e.ap_paterno || ' ' || e.ap_materno nombre_completo, p.id_puesto clave_puesto,
        p.descripción_puesto, d.id_departamento clave_departamento, d.nombre_departamento
FROM empleados e
JOIN puestos p
ON e.id_puesto=p.id_puesto
JOIN departamentos d
ON e.id_departamento=d.id_departamento
WHERE salario IS NULL;

DROP VIEW V_PERSONAL_DOCENTE;


CREATE VIEW V_PERSONAL
AS SELECT e.id_empleado clave_empleado, e.nombre || ' ' || e.ap_paterno || ' ' || e.ap_materno nombre_completo,
        p.id_puesto clave_puesto,p.descripción_puesto, DECODE(d.id_departamento,15,'ADMINISTRATIVO',16,'ADMINISTRATIVO','DOCENTE') "tipo (docente/administrativo)", d.id_departamento clave_departamento, d.nombre_departamento
FROM empleados e
JOIN puestos p
ON e.id_puesto=p.id_puesto
JOIN departamentos d
ON e.id_departamento=d.id_departamento;

DROP VIEW V_PERSONAL;




