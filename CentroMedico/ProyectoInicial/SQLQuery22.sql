


SELECT * FROM Paciente;

BEGIN TRAN
	UPDATE Paciente SET telefono = 777

IF @@ROWCOUNT = 1
	COMMIT TRAN
ELSE 
	ROLLBACK TRAN



--- INNER JOIN 

SELECT * FROM Paciente;
SELECT * FROM TurnoPaciente;


SELECT * FROM Paciente P 
RIGHT JOIN TurnoPaciente T
on P.idPaciente = T.idPaciente;