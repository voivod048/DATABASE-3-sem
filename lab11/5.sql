use ��������_MyBase;
go
declare @tv nvarchar(50), @all nvarchar(1000) = '';
declare cur cursor LOCAL DYNAMIC FOR
	select ��������_������ from Details;
select ��������_������ from Details;
open cur;
	fetch from cur into @tv;
	fetch from cur into @tv;
	fetch from cur into @tv;
	fetch from cur into @tv;
	delete Details where current of cur;
	fetch cur into @tv;
	update Details set ��������_������ = '�������' where current of cur;
close cur;
select ��������_������ from Details;