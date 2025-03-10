
EXEC SELECT_TURNOPACIENTE 5
--Select * from Paciente;
--Select * from medicoEspecialidad
--Select * from medico;
--Select * from Especialidad;

--INSERT INTO MedicoEspecialidad(idMedico, idEpecialidad, Descripcion)
--	VALUES(1, 2, 'Esto es una descripcion')


CREATE PROC SELECT_TURNOPACIENTE (
					@idpaciente paciente
				)
as 
SET NOCOUNT ON

SELECT * FROM Paciente P 
INNER JOIN TurnoPaciente TP
ON TP.idPaciente = P.idPaciente
INNER JOIN Turno T
ON T.idTurno = TP.idTurno
INNER JOIN MedicoEspecialidad M
ON M.idMedico = TP.idMedico

WHERE P.idPaciente = @idpaciente


GO