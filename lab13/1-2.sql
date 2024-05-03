use Высоцкий_MyBase;
go
drop procedure PDETAILS;
go
create procedure PDETAILS
as
begin
	declare @num int = (select count(*) from Details);
	select Название_детали, Артикул, ID from Details;
	return @num;
end;
go
declare @k int;
exec @k = PDETAILS;
print 'Кол-во позиций: ' + cast(@k as varchar(3));
go
--2
alter procedure PDETAILS @p varchar(15), @c int output
as begin
	declare @k int = (select count(*) from Details);
	select * from Details where Название_детали = @p;
	set @c = @@ROWCOUNT;
	return @k;
end;
go

declare @num int, @p varchar(15), @count int;
exec @num = PDETAILS @p = 'Полуось', @c = @count output;
print 'Кол-во позиций: ' + cast(@num as varchar(3));
print 'Кол-во выведенных позиций: ' + cast(@count as varchar(3));
