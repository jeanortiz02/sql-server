USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[S_paciente]    Script Date: 2/27/2025 10:54:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[S_paciente] (
	@idPaciente int
)

AS

--DECLARE @ordenamiento CHAR(1) = 'A'
--DECLARE @valorOrdenamiento CHAR(1)

--SET @valorOrdenamiento = ISNULL(@ordenamiento, 'N')

--PRINT @valorOrdenamiento

SELECT apellido, nombre, idPais, observacion 

FROM Paciente WHERE idPaciente = @idPaciente;

