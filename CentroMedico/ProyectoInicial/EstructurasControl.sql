

--DECLARE @idpaciente INT
--DECLARE @idturno INT
--Set @idpaciente = 7

--IF @idpaciente = 7

--BEGIN
--	SET @idturno = 3
--	SELECT * from Paciente where idPaciente = @idpaciente
--	PRINT @idTurno

--	IF EXISTS(select * from Paciente where idPaciente = 8)
--		Print 'existe'
--	ELSE 
--		Print 'no existe'
--END

--DECLARE @contador int = 0

--WHILE @contador <= 10
--	BEGIN
--		PRINT @contador
--		SET @contador = @contador + 1
--	END


DECLARE @valor int = 30
DECLARE @resultado char(10) = ''


-- Try catch 
BEGIN TRY
	SET @valor = 'Hola'
END TRY

BEGIN CATCH
	print 'Error en el cambio'
END CATCH

SET @resultado =  (
	CASE 
		WHEN @valor = 10 THEN 'ROJO'
		WHEN @valor = 20 THEN 'VERDE'
		WHEN @valor = 30 THEN 'AZUL'
	END
)

print @resultado


SELECT *, (
	CASE 
		WHEN estado = 0 THEN 'EN ESPERA'
		ELSE 'INDEFINIDO'
	END

) as Texto FROM Turno;