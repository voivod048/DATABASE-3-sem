begin try
	select 1/0;
end try
begin catch
    print 'Ошибка номер: ' + CAST(ERROR_NUMBER() AS NVARCHAR(10));
    print 'Сообщение об ошибке: ' + ERROR_MESSAGE();
    print 'Номер строки с ошибкой: ' + CAST(ERROR_LINE() AS NVARCHAR(10));
    print 'Имя процедуры: ' + ISNULL(ERROR_PROCEDURE(), 'NULL');
    print 'Уровень серьезности ошибки: ' + CAST(ERROR_SEVERITY() AS NVARCHAR(10));
    print 'Метка ошибки: ' + CAST(ERROR_STATE() AS NVARCHAR(10));
end catch;