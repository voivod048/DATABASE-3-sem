declare @num int = (select sum(Количество_деталей) from Details_Postavshiki);
if @num > 20
begin
	print 'Кол-во деталей больше 20'
	print @num;
end
else
begin
	print 'Кол-во деталей меньше 20'
	print @num;
end