declare @num int = (select sum(����������_�������) from Details_Postavshiki);
if @num > 20
begin
	print '���-�� ������� ������ 20'
	print @num;
end
else
begin
	print '���-�� ������� ������ 20'
	print @num;
end