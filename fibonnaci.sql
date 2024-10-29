DECLARE @Numero INT;
SET @Numero = 21;

CREATE TABLE #Fibonacci (
    Valor INT
);


INSERT INTO #Fibonacci (Valor) VALUES (0), (1);


DECLARE @ProximoValor INT;
DECLARE @UltimoValor1 INT;
DECLARE @UltimoValor2 INT;

SET @UltimoValor1 = 0;  

WHILE @UltimoValor2 <= @Numero
BEGIN
    SET @ProximoValor = @UltimoValor1 + @UltimoValor2; 
    IF @ProximoValor <= @Numero
    BEGIN
        INSERT INTO #Fibonacci (Valor) VALUES (@ProximoValor);
    END

    SET @UltimoValor1 = @UltimoValor2;
    SET @UltimoValor2 = @ProximoValor;
END

IF EXISTS (SELECT 1 FROM #Fibonacci WHERE Valor = @Numero)
BEGIN
    PRINT 'O número ' + CAST(@Numero AS VARCHAR(10)) + ' pertence à sequência de Fibonacci.';
END
ELSE
BEGIN
    PRINT 'O número ' + CAST(@Numero AS VARCHAR(10)) + ' NÃO pertence à sequência de Fibonacci.';
END


SELECT * FROM #Fibonacci;


DROP TABLE #Fibonacci;

