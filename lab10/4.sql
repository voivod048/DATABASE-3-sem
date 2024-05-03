drop table #temptable3;
go
CREATE table #temptable3
(
    num int, 
    cc int identity(1, 1),
    str1 varchar(100)
);

set nocount on;           
declare @i int = 0;
while   @i < 20000
begin
     INSERT #temptable3(num, str1) values(floor(30000*RAND()), replicate('строка ', 10));
      set @i = @i + 1; 
end;
go
create index #tt3i on #temptable3(num) where (num >= 15000 and num < 20000)
go
select num from  #temptable3 where num between 5000 and 19999;
select num from  #temptable3 where num > 15000 and num < 20000; 
select num from  #temptable3 where num = 17000; 
