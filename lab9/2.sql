declare @sum int = (select sum(����������_�������) from Details_Postavshiki);
declare @avg float(4), @num int, @num2 int, @percent float(5);
if @sum > 50
begin
	print '����� ���-�� �������: ' + cast(@sum as varchar(3));
	select @avg = (select avg(����������_�������) from Details_Postavshiki);
	select @num = (select count(*) from Details_Postavshiki);
	select @num2 = (select count(*) from Details_Postavshiki where ����������_������� < @avg);
	select @percent = cast(@num2 as float(5)) / cast(@num as float(5)) * 100;
	select @num '���-�� �������', @avg '������� ���-�� �������', @num2 '���-�� �������, ��� ������� ������ ��������', @percent '������� ����� �������';
end
else 
begin
	print '����� ���-�� �������: ' + cast(@sum as varchar(3));
end