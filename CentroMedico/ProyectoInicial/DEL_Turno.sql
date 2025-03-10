

/*
select * from turno
select * from turnopaciente
*/

--EXEC DEL_turno 5

CREATE PROC DEL_Turno(
				@idturno turno				)

AS
set nocount on


if exists(SELECT * from Turno
			WHERE idturno = @idturno)
BEGIN	
	DELETE FROM TurnoPaciente WHERE idturno = @idturno
	DELETE FROM Turno WHERE idturno = @idturno
END
ELSE
	SELECT 0 as resultado

