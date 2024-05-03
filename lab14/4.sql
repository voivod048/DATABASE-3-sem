use Высоцкий_MyBase;
go
create function FKol(@p int) returns int
as begin
	declare @rc int = (select count(*) from Details_Postavshiki
	where Код = isnull(@p, Код));
	return @rc;
end;
go

declare @num int;
set @num = dbo.FKol(1);
print @num;
go
drop function FKol;