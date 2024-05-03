use Высоцкий_MyBase;
go
declare @point varchar(20);
begin try
	begin tran
		delete Details_Postavshiki where ID = 10;
		set @point = 'p1'; save tran @point
		insert Details_Postavshiki values (11, 11, 11);
		set @point = 'p2'; save tran @point;
		insert Details_Postavshiki values (12, 12, 12);
	commit tran
end try
begin catch
	print 'ошибка: ' + cast(error_number() as varchar(5)) + ' ' + error_message();
	if @@trancount > 0
	begin
		print 'контрольная точка ' + @point;
		rollback tran @point;
		commit tran;
	end;
end catch;