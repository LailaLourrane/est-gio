WITH numeros (K) AS (
    SELECT 1
    UNION ALL
    SELECT K + 1 FROM numeros WHERE K < 13
)
SELECT SUM(K) AS SOMA FROM numeros;

