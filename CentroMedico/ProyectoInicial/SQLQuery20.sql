

SELECT dbo.nombreFunc(5);

CREATE FUNCTION nombreFunc(@var int)
returns int

AS

BEGIN
	set @var = @var * 5
	return @var
END