INSERT INTO departamentos VALUES (12,'DOCENCIA');
INSERT INTO departamentos VALUES (13,'COORDINACION');
INSERT INTO departamentos VALUES (14,'SUPLENTES');
INSERT INTO departamentos VALUES (15,'SERVICIOS ESCOLARES');
INSERT INTO departamentos VALUES (16,'ADMINISTRACION');

SELECT * FROM departamentos;

INSERT INTO puestos VALUES (23,'MAESTRO');
INSERT INTO puestos VALUES (24,'COORDINADOR_CARRERA');
INSERT INTO puestos VALUES (25,'COORDINADOR_AREA');
INSERT INTO puestos VALUES (26,'EMPLEADO-MOSTRADOR');
INSERT INTO puestos VALUES (27,'CONTADOR');

SELECT * FROM puestos;

INSERT INTO empleados VALUES (123,23,12,null,3849538273,'GOTJCS4','GOTJ9383D0JG830293','JOSE','TORRES','GONZALEZ');
INSERT INTO empleados VALUES (124,24,13,null,3840294857,'MAAMCS7','MAAM0395483K4953J5','MARIA','ARVIZU','MARTINEZ');
INSERT INTO empleados VALUES (125,23,14,null,2938432841,'OCHJCS6','OCHJ9304938473JGH4','JESUS','HERNANDEZ','OCHOA');
INSERT INTO empleados VALUES (126,23,12,null,9384720483,'LORPCS3','LORP647382938475HF74','PEDRO','RUIZ','LOZANO');
INSERT INTO empleados VALUES (127,23,12,null,2938475629,'MAJJCS8','MAJJ3849302938475HG','JUDAS','JUAREZ','MARTINEZ');
INSERT INTO empleados VALUES (128,26,15,12000,1029374837,'NIAMCS1','NIAM3948574638475HU','MATEO','ACOSTA','NIETO');
INSERT INTO empleados VALUES (129,27,16,14000,1039485739,'BRLICS5','BRLI394857603948JH84','IKER','LOPEZ','BRAVO');

SELECT * FROM empleados;

INSERT INTO docentes VALUES (67,123,'HOTTIE123@GMAIL.COM','J.GONZALEZ67@SCUL.COM','12/12/2015');
INSERT INTO docentes VALUES (68,124,'NORMIE123@GMAIL.COM','M.MARTINEZ68@SCUL.COM','15/02/2020');
INSERT INTO docentes VALUES (69,125,'JUCY0203@GMAIL.COM','J.OCHOA69@SCUL.COM','16/01/2021');
INSERT INTO docentes VALUES (70,126,'LOVER039@GMAIL.COM','P.LOZANO70@SCUL.COM','14/02/2022');
INSERT INTO docentes VALUES (71,127,'BGCK031@GMAIL.COM','J.MARTINEZ71@SCUL.COM','16/12/2016');

SELECT * FROM docentes;

INSERT INTO registro_periodos VALUES(45,'08/2020-12/2021','01/08/2020','27/12/2020');
INSERT INTO registro_periodos VALUES(46,'01/2021-07/2021','01/01/2021','27/07/2021');
INSERT INTO registro_periodos VALUES(47,'08/2021-12/2021','01/08/2021','27/12/2021');
INSERT INTO registro_periodos VALUES(48,'01/2022-07/2022','01/01/2022','27/07/2022');
INSERT INTO registro_periodos VALUES(49,'08/2022-12/2022','01/08/2022','27/12/2022');

SELECT * FROM registro_periodos;
TRUNCATE TABLE registro_periodos;

INSERT INTO programa_educativo VALUES (30,'INGENIERIAS',200);
INSERT INTO programa_educativo VALUES (31,'HUMANIDADES',120);
INSERT INTO programa_educativo VALUES (32,'CIENCIA',180);
INSERT INTO programa_educativo VALUES (33,'MEDICINA',210);
INSERT INTO programa_educativo VALUES (34,'CONTABILIDAD',180);

SELECT * FROM programa_educativo;

INSERT INTO registro_carga VALUES (1,67,30,45,6);
INSERT INTO registro_carga VALUES (2,67,34,45,4);
INSERT INTO registro_carga VALUES (3,68,33,45,6);
INSERT INTO registro_carga VALUES (4,67,31,46,8);
INSERT INTO registro_carga VALUES (5,68,30,46,4);
INSERT INTO registro_carga VALUES (6,67,31,47,6);
INSERT INTO registro_carga VALUES (7,68,32,48,7);
INSERT INTO registro_carga VALUES (8,69,33,48,6);
INSERT INTO registro_carga VALUES (9,70,34,49,4);
INSERT INTO registro_carga VALUES (10,71,30,49,7);

SELECT * FROM registro_carga;

TRUNCATE TABLE registro_carga;














