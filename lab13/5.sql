USE ��������_MyBase;
GO
drop procedure detpr;
deallocate cur;
go
CREATE PROCEDURE detpr
    @p NVARCHAR(15)
AS
BEGIN
    DECLARE @rc INT = 0;

    BEGIN TRY
        DECLARE @tv NVARCHAR(50), @all NVARCHAR(1000) = '';
        DECLARE cur CURSOR FOR
            SELECT ��������_������ FROM Details WHERE ��������_������ = @p;

        IF NOT EXISTS (SELECT ��������_������ FROM Details WHERE ��������_������ = @p)
            RAISERROR('������', 11, 1);
        ELSE
        BEGIN
            OPEN cur;
            FETCH NEXT FROM cur INTO @tv;

            WHILE @@FETCH_STATUS = 0
            BEGIN
                SET @all = RTRIM(@tv) + ', ' + @all;
                FETCH NEXT FROM cur INTO @tv;
                SET @rc = @rc + 1;
            END;

            PRINT '������ �������: ' + @all;
            CLOSE cur;
        END;
    END TRY
    BEGIN CATCH
        PRINT '������ � ����������.';
        IF ERROR_PROCEDURE() IS NOT NULL
            PRINT '��� ���������: ' + ERROR_PROCEDURE();
			print ERROR_MESSAGE();
        SET @rc = -1;
    END CATCH;
	return @rc;
    SELECT @rc;
END;
GO

DECLARE @r INT;
EXEC @r = detpr @p = '�������';
PRINT '���������� �������: ' + CAST(@r AS VARCHAR(3));