CREATE TABLE #Faturamento (
    Estado VARCHAR(50),
    Valor DECIMAL(18, 2)
);

INSERT INTO #Faturamento (Estado, Valor) VALUES
('SP', 67836.43),
('RJ', 36678.66),
('MG', 29229.88),
('ES', 27165.48),
('Outros', 19849.53);

DECLARE @FaturamentoTotal DECIMAL(18, 2);
SELECT @FaturamentoTotal = SUM(Valor) FROM #Faturamento;

SELECT 
    Estado,
    Valor,
    (Valor / @FaturamentoTotal) * 100 AS Percentual
FROM 
    #Faturamento;

DROP TABLE #Faturamento;
