use ��������_MyBase
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
        PRINT '��� �������: ' + @t;
        PRINT '��� �������: ' + @t1;
        PRINT '��� �������: ' + @t2;
        RAISERROR(N'�������� � �������� ������ ���������', 16, 1);
        ROLLBACK;
    END;
END;
GO
alter table Details drop column �������;
go
drop trigger DDL_PRODAJI;
