declare cur cursor for 
	select ��������_������, ID
		from Details where ID between 1 and 4;
declare @detail nvarchar(40), @id int;
open cur;
	fetch next from cur into @detail, @id;
	while @@FETCH_STATUS = 0
	begin
		update Details set ������� = ������� + 1 where ID = @id;
		fetch next from cur into @detail, @id;
	end;
close cur;
deallocate cur;