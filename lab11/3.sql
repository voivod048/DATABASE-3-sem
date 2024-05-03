use Высоцкий_MyBase;
go
declare @tv nvarchar(50), @all nvarchar(1000) = '';
declare cur cursor LOCAL DYNAMIC FOR
	select Название_детали from Details;
open cur
  insert into Details(Название_детали, Артикул)
	values('Радиатор печки', 1010);
	fetch cur into @tv;
	set @all = @tv;
	print 'Список товаров: ';
	while @@FETCH_STATUS = 0
		begin
			set @all = rtrim(@tv) + ', ' + @all;
			fetch cur into @tv
		end;
	print @all;
close cur;