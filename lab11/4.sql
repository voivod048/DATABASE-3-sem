use ��������_MyBase;
go
declare @tv nvarchar(50), @all nvarchar(1000) = '';
declare cur cursor LOCAL STATIC SCROLL FOR
	select ��������_������ from Details;
open cur
	fetch cur into @tv;
	print @tv;
	print '��������� ������: ';
	fetch next from cur into @tv;
	print @tv;
	print '���������� ������: ';
	fetch prior from cur into @tv;
	print @tv;
	print '������ ������: ';
	fetch first from cur into @tv;
	print @tv;
	print '���������� ������: ';
	fetch last from cur into @tv;
	print @tv;
	print '4 ������: ';
	fetch absolute 4 from cur into @tv;
	print @tv;
	print '������ �� 2 ������ ���� ������������ 4 ������: ';
	fetch relative -2 from cur into @tv;
	print @tv;
close cur;