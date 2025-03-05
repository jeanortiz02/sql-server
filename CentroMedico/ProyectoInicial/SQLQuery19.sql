


SELECT * FROM Paciente;

ALTER TABLE Paciente add estado smallint;
ALTER TABLE Paciente Alter COLUMN estado bit;
ALTER TABLE Paciente DROP COLUMN estado;