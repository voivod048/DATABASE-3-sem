use Высоцкий_MyBase;
exec SP_HELPINDEX 'Details';
go
drop index #temptable.#tempindex;
drop table #temptable;
go
create table #temptable
(
	str1 varchar(10),
	str2 varchar(2),
	num int
);
declare @i int = 0;
while @i < 5000
begin
    set @i = @i + 1;
	insert into #temptable(str1, str2, num)
	values ('Строка', '№', @i);
end;
go
create clustered index #tempindex on #temptable(num asc)
go
select * from #temptable where num between 1500 and 2500 order by num;
