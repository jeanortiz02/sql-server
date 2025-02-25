

SELECT * FROM Paciente ORDER BY fNacimiento DESC;

SELECT TOP 1 * FROM Paciente ORDER BY fNacimiento DESC;

SELECT DISTINCT idpais FROM Paciente;

SELECT DISTINCT fNacimiento FROM Paciente;

SELECT idpais from Paciente GROUP BY idPais;

SELECT * FROM Paciente WHERE fNacimiento = '2000-05-03';