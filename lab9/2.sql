declare @sum int = (select sum(Количество_деталей) from Details_Postavshiki);
declare @avg float(4), @num int, @num2 int, @percent float(5);
if @sum > 50
begin
	print 'Общее кол-во деталей: ' + cast(@sum as varchar(3));
	select @avg = (select avg(Количество_деталей) from Details_Postavshiki);
	select @num = (select count(*) from Details_Postavshiki);
	select @num2 = (select count(*) from Details_Postavshiki where Количество_деталей < @avg);
	select @percent = cast(@num2 as float(5)) / cast(@num as float(5)) * 100;
	select @num 'Кол-во позиций', @avg 'Среднее кол-во деталей', @num2 'Кол-во позиций, где деталей меньше среднего', @percent 'Процент таких позиций';
end
else 
begin
	print 'Общее кол-во деталей: ' + cast(@sum as varchar(3));
end