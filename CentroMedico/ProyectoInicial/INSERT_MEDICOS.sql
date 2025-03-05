
--sp_help Paciente;
sp_help ALTA_Paciente;
sp_helptext ALTA_Paciente;

--SELECT * from Medico;
-- SELECT * FROM Especialidad;
--select * from MedicoEspecialidad;

EXEC newMedico 'Jean', 'Ortiz', 1, 'No hay nada que mostrar';

CREATE PROCEDURE newMedico (
	@nombre varchar(50),
	@apellido varchar(20),
	@idespecialidad int,
	@descripcion varchar(50)
)

AS

set nocount on

IF NOT EXISTS(SELECT TOP 1 Nombre from Medico WHERE Nombre=@nombre)

	BEGIN 
		INSERT INTO Medico(Nombre, Apellido)
		VALUES(@nombre, @apellido)

		DECLARE @axuIdMedico medico
		SET @axuIdMedico = @@IDENTITY

		INSERT INTO MedicoEspecialidad(idMedico, idEpecialidad, Descripcion)
		VALUES(@axuIdMedico, @idespecialidad, @descripcion)

		print 'El medico y la especialidad fue agregado correctamente'
		return
	END

ELSE 
	BEGIN 
		print 'Ya el medico existe'
		return
	END


GO