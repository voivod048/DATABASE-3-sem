use ��������_MyBase;
go
drop procedure PDETAILS;
go
create procedure PDETAILS
as
begin
	declare @num int = (select count(*) from Details);
	select ��������_������, �������, ID from Details;
	return @num;
end;
go
declare @k int;
exec @k = PDETAILS;
print '���-�� �������: ' + cast(@k as varchar(3));
go
--2
alter procedure PDETAILS @p varchar(15), @c int output
as begin
	declare @k int = (select count(*) from Details);
	select * from Details where ��������_������ = @p;
	set @c = @@ROWCOUNT;
	return @k;
end;
go

declare @num int, @p varchar(15), @count int;
exec @num = PDETAILS @p = '�������', @c = @count output;
print '���-�� �������: ' + cast(@num as varchar(3));
print '���-�� ���������� �������: ' + cast(@count as varchar(3));
