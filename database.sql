
DROP DATABASE IF EXISTS Laboratorio;
CREATE DATABASE IF NOT EXISTS Laboratorio;
USE Laboratorio;

-- Analsis del laboratorio
CREATE TABLE IF NOT EXISTS Analisis(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    analisis VARCHAR(128) NOT NULL,
    descripcion VARCHAR(255),
    -- external manage
    id_externo INT,
    actualizado TINYINT(1) DEFAULT 0,
    eliminado TINYINT(1) DEFAULT 0
);

-- Uno de los datos del analisis con su referencia
CREATE TABLE Componente(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    componente VARCHAR(128) NOT NULL,
    descripcion VARCHAR(255),
    -- external manage
    id_externo INT,
    actualizado TINYINT(1) DEFAULT 0,
    eliminado TINYINT(1) DEFAULT 0
);

-- Relacion entre el componente y el analisis
CREATE TABLE IF NOT EXISTS Componente_Analisis(
    id_analisis INT NOT NULL,
    id_componente INT NOT NULL,
    CONSTRAINT fk_ca_analisis FOREIGN KEY (id_analisis) REFERENCES Analisis (id),
    CONSTRAINT fk_ca_componente FOREIGN KEY (id_componente) REFERENCES Componente (id),
    -- external manage
    subido TINYINT(1) DEFAULT 0,
    actualizado TINYINT(1) DEFAULT 0
);

CREATE TABLE Paciente(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(128) NOT NULL,
    apellido_paterno VARCHAR(128) NOT NULL,
    apellido_materno VARCHAR(128),
    correo VARCHAR(512),
    telefono DECIMAL(12, 0),
    genero TINYINT(1),
    edad INT,
    -- external manage
    id_externo INT,
    actualizado TINYINT(1) DEFAULT 0,
    eliminado TINYINT(1) DEFAULT 0
);

CREATE TABLE Doctor(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(128) NOT NULL,
    apellido_paterno VARCHAR(128) NOT NULL,
    apellido_materno VARCHAR(128),
    correo VARCHAR(512),
    telefono DECIMAL(12, 0),
    descuento FLOAT,
    comision FLOAT,
    -- external manage
    id_externo INT,
    actualizado TINYINT(1) DEFAULT 0,
    eliminado TINYINT(1) DEFAULT 0
);

CREATE TABLE Institucion(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    institucion VARCHAR(512) NOT NULL,
    descuento FLOAT,
    id_externo INT,
    -- external manage
    actualizado TINYINT(1) DEFAULT 0,
    eliminado TINYINT(1) DEFAULT 0
);

CREATE TABLE Precio(
    id_analisis INT NOT NULL,
    id_institucion INT,
    id_doctor INT,
    precio FLOAT NOT NULL,
    CONSTRAINT fk_precio_analisis FOREIGN KEY (id_analisis) REFERENCES Analisis (id),
    -- external manage
    subido TINYINT(1) DEFAULT 0,
    actualizado TINYINT(1) DEFAULT 0
);

CREATE TABLE Orden(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_paciente INT NOT NULL,
    id_doctor INT NOT NULL,
    id_institucion INT,
    total FLOAT NOT NULL,
    descuento_pc FLOAT NOT NULL DEFAULT 0,
    descuento FLOAT NOT NULL DEFAULT 0,
    otros FLOAT NOT NULL DEFAULT 0,
    fecha_pedido DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fecha_entrega DATETIME NOT NULL,
    CONSTRAINT fk_orden_paciente FOREIGN KEY (id_paciente) REFERENCES Paciente (id),
    CONSTRAINT fk_orden_doctor FOREIGN KEY (id_doctor) REFERENCES Doctor (id),
    -- external manage
    id_externo INT,
    actualizado TINYINT(1) DEFAULT 0,
    eliminado TINYINT(1) DEFAULT 0
);

CREATE TABLE Orden_Analisis(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_orden INT NOT NULL,
    id_analisis INT NOT NULL,
    CONSTRAINT fk_oa_orden FOREIGN KEY (id_orden) REFERENCES Orden (id),
    CONSTRAINT fk_oa_analisis FOREIGN KEY (id_analisis) REFERENCES Analisis (id),
    -- external manage
    id_externo INT,
    actualizado TINYINT(1) DEFAULT 0,
    eliminado TINYINT(1) DEFAULT 0
);

CREATE TABLE Resultado_Componente(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_orden_analisis INT NOT NULL,
    id_componente INT NOT NULL, 
    resultado VARCHAR(128) NOT NULL,
    fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_rc_oa FOREIGN KEY (id_orden_analisis) REFERENCES Orden_Analisis (id),
    CONSTRAINT fk_rc_componente FOREIGN KEY (id_componente) REFERENCES Componente (id),
    -- external manage
    id_externo INT,
    actualizado TINYINT(1) DEFAULT 0,
    eliminado TINYINT(1) DEFAULT 0
);

CREATE TABLE Pago(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_orden INT NOT NULL,
    pago FLOAT NOT NULL,
    fecha_pago DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_externo INT,
    CONSTRAINT fk_pago_orden FOREIGN KEY (id_orden) REFERENCES Orden (id),
    -- external manage
    actualizado TINYINT(1) DEFAULT 0,
    eliminado TINYINT(1) DEFAULT 0
);

CREATE TABLE Usuario(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    username VARCHAR(128) NOT NULL,
    password VARCHAR(128) NOT NULL,
    activo TINYINT(1) NOT NULL DEFAULT 1,
    -- external manage
    id_externo INT,
    actualizado TINYINT(1) DEFAULT 0,
    eliminado TINYINT(1) DEFAULT 0
);

CREATE TABLE Permiso(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    permiso VARCHAR(255)
);

CREATE TABLE Usuario_Permiso(
    id_usuario INT NOT NULL,
    id_permiso INT NOT NULL,
    subido TINYINT(1) DEFAULT 0,
    actualizado TINYINT(1) DEFAULT 0
);
