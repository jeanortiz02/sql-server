

SELECT * FROM Pago;

SELECT SUM(monto) as montoTotal FROM Pago;
SELECT SUM(monto + 20 ) as montoTotal FROM Pago;
SELECT SUM(monto) + 20 as montoTotal FROM Pago;


SELECT AVG(monto) + 20 as montoPromedio FROM Pago;

SELECT COUNT(*) as montoTotal FROM Pago;