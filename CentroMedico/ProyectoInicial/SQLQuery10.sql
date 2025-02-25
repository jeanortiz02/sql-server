
SELECT * FROM Paciente;


UPDATE Paciente SET email = 'cambio@correo.com' WHERE idPaciente = 2;

UPDATE Paciente SET nombre = 'Daniel', email = 'dsanchez@correo.com' WHERE idPaciente = 7;

DELETE FROM Paciente where idPaciente = 6;