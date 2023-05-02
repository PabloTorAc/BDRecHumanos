CREATE TABLE departamentos (
    id_departamento NUMBER PRIMARY KEY,
    nombre_departamento VARCHAR2(20)
);

CREATE TABLE puestos (
    id_puesto NUMBER PRIMARY KEY,
    descripción_puesto VARCHAR2 (50)
);

CREATE TABLE empleados (
    id_empleado NUMBER PRIMARY KEY,
    id_puesto NUMBER,
    id_departamento NUMBER,
    salario NUMBER,
    celular NUMBER NOT NULL,
    rfc VARCHAR2 (15) NOT NULL,
    curp VARCHAR2 (20) NOT NULL,
    nombre VARCHAR2 (30),
    ap_paterno VARCHAR2 (15),
    ap_materno VARCHAR2 (15),
    CONSTRAINT fk_dep_emp FOREIGN KEY (id_departamento)
        REFERENCES DEPARTAMENTOS(id_departamento),
    CONSTRAINT fk_pue_emp FOREIGN KEY (id_puesto)
        REFERENCES PUESTOS(id_puesto)
);

CREATE TABLE docentes (
    id_docente NUMBER PRIMARY KEY,
    id_empleado NUMBER,
    correo_pers VARCHAR2 (30),
    correo_inst VARCHAR2 (30),
    fecha_registro DATE,
    CONSTRAINT fk_emp_doc FOREIGN KEY (id_empleado) 
        REFERENCES EMPLEADOS(id_empleado)
);

CREATE TABLE registro_periodos (
    id_periodo NUMBER PRIMARY KEY,
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE programa_educativo (
    id_programa NUMBER PRIMARY KEY,
    nombre_programa VARCHAR2(20) NOT NULL,
    importe_hora NUMBER NOT NULL
);

CREATE TABLE registro_carga (
    id_registro NUMBER PRIMARY KEY,
    id_docente NUMBER,
    id_programa NUMBER,
    id_periodo NUMBER,
    horas_semanales NUMBER,
    CONSTRAINT fk_doc_car FOREIGN KEY (id_docente)
        REFERENCES DOCENTES(id_docente),
    CONSTRAINT fk_pro_car FOREIGN KEY (id_programa)
        REFERENCES PROGRAMA_EDUCATIVO(id_programa),
    CONSTRAINT fk_per_car FOREIGN KEY (id_periodo)
        REFERENCES REGISTRO_PERIODOS(id_periodo)
);

DROP TABLE departamentos;
DROP TABLE puestos;
DROP TABLE registro_carga;
DROP TABLE programa_educativo;
DROP TABLE registro_periodos;
DROP TABLE docentes;
DROP TABLE empleados;

