

SELECT * from Turno;
SELECT * FROM Paciente;
SELECT * FROM Medico;
SELECT * from TurnoPaciente;

INSERT INTO Turno(fechaTurno, estado, observacion) VALUES('2023-03-15', '0', 'Paciente en ayunas');
INSERT INTO TurnoPaciente(idTurno, idPaciente, idMedico) VALUES ('5', '1', '1');