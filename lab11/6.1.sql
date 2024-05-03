declare @OrderDate date = '2023-05-26';
declare cur cursor for 
	select Название_детали, Date_zakaza 
		from Details inner join ZAKAZANO
			on Date_zakaza < @OrderDate;
declare @zakaz nvarchar(40), @date_zak date;
open cur;
	fetch next from cur into @zakaz, @date_zak;
	while @@FETCH_STATUS = 0
	begin
		delete from ZAKAZANO where Date_zakaza = @date_zak;
		fetch next from cur into @zakaz, @date_zak;
	end;
close cur;
deallocate cur;