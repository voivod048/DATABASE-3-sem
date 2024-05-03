use Высоцкий_MyBase;
go
drop procedure PINSERT;
go
create procedure PINSERT @a int, @b int, @c int, @d int
as begin declare @rc int = 1
begin try
	insert into Details_Postavshiki (Код, ID, Количество_деталей, ID_dp)
	values (@a, @b, @c, @d);
	return @rc;
end try
begin catch
	print 'номер ошибки ' + cast(error_number() as varchar(6));
	print 'сообщение ' + error_message();
	print 'уровень ' + cast(error_severity() as varchar(6));
	print 'метка ' + cast(error_state() as varchar(8));
	print 'номер строки ' + cast(error_line() as varchar(8));
	if error_procedure() is not null
		print 'имя процедуры ' + error_procedure();
	return -1;
end catch;
end;

declare @r int;
exec @r = PINSERT @a = 6, @b = 6, @c = 6, @d = 30;

print 'код ошибки ' + cast(@r as varchar(2));