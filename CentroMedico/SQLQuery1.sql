


CREATE TABLE Pago (
	idPago int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	concepto tinyint NOT NULL,
	fecha datetime NOT NULL, 
	monto money NOT NULL,
	estado tinyint,
	observacion varchar(1000)
);