use Высоцкий_MyBase;
go
begin try
	begin tran
		delete Details_Postavshiki where ID = 10;
		insert Details_Postavshiki values (11, 11, 11);
	commit tran
end try
begin catch
	print 'ошибка: ' + cast(error_number() as varchar(5)) + ' ' + error_message();
	if @@trancount > 0 rollback tran;
end catch;