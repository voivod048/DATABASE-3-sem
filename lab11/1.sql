use ��������_MyBase;
go
deallocate cur;
go
declare @tv nvarchar(50), @all nvarchar(1000) = '';
declare cur cursor FOR
	select ��������_������ from Details;
open cur
	fetch cur into @tv;
	set @all = @tv;
	print '������ �������: ';
	while @@FETCH_STATUS = 0
		begin
			set @all = rtrim(@tv) + ', ' + @all;
			fetch cur into @tv
		end;
	print @all;
close cur;