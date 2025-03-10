
EXEC SEL_EspecialidadMedica

CREATE PROCEDURE SEL_EspecialidadMedica
AS 
SET NOCOUNT ON 

IF EXISTS(SELECT * FROM Especialidad)
	SELECT * FROM Especialidad
ELSE 
	SELECT 0 AS Resultado