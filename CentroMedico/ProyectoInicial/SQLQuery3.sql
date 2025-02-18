CREATE DATABASE Ejemplo;

CREATE TABLE Paciente2 (
	idPaciente int NOT NULL,
	nombre varchar(50) NOT NULL,
	apellido varchar(50) NULL,
	fnacimiento date NULL,
	domicilio varchar(50) NULL,
	idPais char(3) NULL,
	telefono varchar(20) NULL,
	email varchar(30) NULL,
	observacion varchar(1000),
	fechaAlta datetime NOT NULL,
	CONSTRAINT PK_idPaciente PRIMARY KEY (idPaciente)
);