use Высоцкий_MyBase;
go
declare @tv nvarchar(50), @all nvarchar(1000) = '';
declare cur cursor LOCAL STATIC SCROLL FOR
	select Название_детали from Details;
open cur
	fetch cur into @tv;
	print @tv;
	print 'Следующая строка: ';
	fetch next from cur into @tv;
	print @tv;
	print 'Предыдущая строка: ';
	fetch prior from cur into @tv;
	print @tv;
	print 'Первая строка: ';
	fetch first from cur into @tv;
	print @tv;
	print 'СПоследняя строка: ';
	fetch last from cur into @tv;
	print @tv;
	print '4 строка: ';
	fetch absolute 4 from cur into @tv;
	print @tv;
	print 'Строка на 2 строки ниже относительно 4 строки: ';
	fetch relative -2 from cur into @tv;
	print @tv;
close cur;