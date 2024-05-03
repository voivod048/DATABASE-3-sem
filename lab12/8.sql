USE Высоцкий_MyBase;
BEGIN TRANSACTION; -- Внешняя транзакция
    delete from [Details_Postavshiki] where ID = 1;
    INSERT INTO [Details_Postavshiki] VALUES (1, 1, 4);
	SELECT Название FROM [Details_Postavshiki] inner join Postavshiki on [Details_Postavshiki].Код = Postavshiki.Код 
		WHERE ID = 1;
    BEGIN TRANSACTION; -- Вложенная транзакция
        UPDATE [Details_Postavshiki] SET Код = 2 WHERE ID = 1;
        SELECT Название FROM [Details_Postavshiki] inner join Postavshiki on [Details_Postavshiki].Код = Postavshiki.Код
			WHERE ID = 1;
    COMMIT; -- Завершение вложенной транзакции
        SELECT Название FROM [Details_Postavshiki] inner join Postavshiki on [Details_Postavshiki].Код = Postavshiki.Код
			WHERE ID = 1;
COMMIT; -- Завершение внешней транзакции