-- Tablas
/*
 Usuarios
 Laboratorio
 Cliente
 Doctor
 Analisis
 Componentes
 Muestras

 Pedido
 Pago
*/

DROP DATABASE IF EXISTS Laboratorio;
CREATE DATABASE IF NOT EXISTS Laboratorio;
USE Laboratorio;

-- Laboratorio
CREATE TABLE Laboratorio(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    laboratorio VARCHAR(512); NOT NULL,
    direccion TEXT NOT NULL
);

CREATE TABLE Usuario(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username VARCHAR(128); NOT NULL,
    password VARCHAR(128); NOT NULL,
    activo TINYINT(1); NOT NULL DEFAULT 1
);

CREATE TABLE Permiso(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    permiso varchar(255);
);

CREATE TABLE Usuario_Permiso(
    id_usuario INT NOT NULL,
    id_permiso INT NOT NULL
);

-- Analsis del laboratorio
CREATE TABLE IF NOT EXISTS Analisis(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    analisis VARCHAR(255); NOT NULL
);

-- Uno de los datos del analisis con su referencia
CREATE TABLE Componente(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    componente VARCHAR(255); NOT NULL,
    descripcion VARCHAR(255);
);

-- Relacion entre el componente y el analisis
CREATE TABLE IF NOT EXISTS Componente_Analisis(
    id_analisis INT NOT NULL,
    id_componente INT NOT NULL
);

-- Datos del paciente
CREATE TABLE Paciente(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(128); NOT NULL,
    apellido_paterno VARCHAR(128); NOT NULL,
    apellido_materno VARCHAR(128);,
    correo VARCHAR(512);,
    telefono DECIMAL(12, 0);,
    genero TINYINT(1);,
    edad INT NOT NULL
);

CREATE TABLE Doctor(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(128); NOT NULL,
    apellido_paterno VARCHAR(128); NOT NULL,
    apellido_materno VARCHAR(128);,
    correo VARCHAR(512);,
    telefono DECIMAL(12, 0);
);

CREATE TABLE Institucion(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    institucion VARCHAR(512) NOT NULL
)

CREATE TABLE Pedido(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_paciente INT NOT NULL,
    id_doctor INT,
    total FLOAT NOT NULL,
    descuento_pc FLOAT NOT NULL DEFAULT 0,
    descuento FLOAT NOT NULL DEFAULT 0,
    otros FLOAT NOT NULL DEFAULT 0,
    fecha_pedido DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fecha_entrega DATETIME NOT NULL
);

CREATE TABLE Pedido_Analisis(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_analisis INT NOT NULL
);

CREATE TABLE Resultado_Componente(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_pedido_analisis INT NOT NULL,
    id_componente INT NOT NULL,
    resultado VARCHAR(128) NOT NULL,
    fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Pago(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    pago FLOAT NOT NULL,
    fecha_pago DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

