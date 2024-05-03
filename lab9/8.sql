drop table #temp1

create table #temp1
(
	str1 varchar(10),
	str2 varchar(2),
	num int
);
declare @i int = 0;
while @i < 10
begin
    set @i = @i + 1;
	insert into #temp1(str1, str2, num)
	values ('Строка', '№', @i);
	if @i = 5
		return;
end;
go

select * from #temp1;