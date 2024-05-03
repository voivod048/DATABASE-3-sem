use Высоцкий_MyBase;
go
declare @tv nvarchar(50), @all nvarchar(1000) = '';
declare cur cursor LOCAL DYNAMIC FOR
	select Название_детали from Details;
select Название_детали from Details;
open cur;
	fetch from cur into @tv;
	fetch from cur into @tv;
	fetch from cur into @tv;
	fetch from cur into @tv;
	delete Details where current of cur;
	fetch cur into @tv;
	update Details set Название_детали = 'Полуось' where current of cur;
close cur;
select Название_детали from Details;