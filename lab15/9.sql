use Высоцкий_MyBase
  go	

CREATE TRIGGER DDL_PRODAJI ON DATABASE 
FOR DDL_DATABASE_LEVEL_EVENTS
AS
BEGIN
    DECLARE @t VARCHAR(50) = EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'VARCHAR(50)');
    DECLARE @t1 VARCHAR(50) = EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'VARCHAR(50)');
    DECLARE @t2 VARCHAR(50) = EVENTDATA().value('(/EVENT_INSTANCE/ObjectType)[1]', 'VARCHAR(50)');

    IF @t1 = 'Details'
    BEGIN
        PRINT 'Тип события: ' + @t;
        PRINT 'Имя объекта: ' + @t1;
        PRINT 'Тип объекта: ' + @t2;
        RAISERROR(N'Операции с таблицей Товары запрещены', 16, 1);
        ROLLBACK;
    END;
END;
GO
alter table Details drop column Артикул;
go
drop trigger DDL_PRODAJI;
