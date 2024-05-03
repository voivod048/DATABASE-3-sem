use Высоцкий_MyBase;
go
create function FDetails(@tz int) returns nvarchar(1000)
as begin
        DECLARE @tv NVARCHAR(50), @all NVARCHAR(1000) = '';
        DECLARE cur CURSOR FOR
            SELECT Название_детали FROM Details inner join Details_Postavshiki on Details.ID = Details_Postavshiki.ID WHERE Details_Postavshiki.Код = @tz;
        BEGIN
            OPEN cur;
            FETCH NEXT FROM cur INTO @tv;

            WHILE @@FETCH_STATUS = 0
            BEGIN
                SET @all = RTRIM(@tv) + ', ' + @all;
                FETCH NEXT FROM cur INTO @tv;
            END;

            CLOSE cur;
        END;
	return @all;
end;
go

declare @a nvarchar(1000) = dbo.FDetails(2);
print @a;
go
drop function dbo.FDetails;