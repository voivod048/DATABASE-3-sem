use Высоцкий_MyBase;
go
create trigger Det_Tran on Details after INSERT, DELETE, UPDATE
as declare @c int = (select sum(Количество_деталей) from Details_Postavshiki);

begin try
    if @c > 200
	raiserror(N'Общее кол-во не может превышать 200', 10, 1);
end try
begin catch
	print error_message();
	print error_number();
	rollback;
end catch;
return;
go
update Details_Postavshiki set Количество_деталей = 100 where Количество_деталей = 2;
go
drop trigger Det_Tran;