DECLARE @StringOriginal NVARCHAR(100) = 'Exemplo';
DECLARE @StringInvertida NVARCHAR(100) = '';
DECLARE @Indice INT = LEN(@StringOriginal);


WHILE @Indice > 0
BEGIN

    SET @StringInvertida = @StringInvertida + SUBSTRING(@StringOriginal, @Indice, 1);
    
    SET @Indice = @Indice - 1;
END

SELECT @StringOriginal AS StringOriginal, @StringInvertida AS StringInvertida;
