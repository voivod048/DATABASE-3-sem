create table #temp
(
	str1 varchar(10),
	str2 varchar(2),
	num int
);
declare @i int = 0;
while @i < 10
begin
    set @i = @i + 1;
	insert into #temp(str1, str2, num)
	values ('Строка', '№', @i);
	
end;

select * from #temp;