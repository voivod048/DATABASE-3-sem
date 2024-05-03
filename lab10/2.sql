drop table #temptable1;
go
CREATE table #temptable1
(    
      num int, 
      cc int identity(1, 1),
      str1 varchar(100)
);

set nocount on;           
declare @i int = 0;
while   @i < 20000
begin
     INSERT #temptable1(num, str1) values(floor(30000*RAND()), replicate('строка ', 10));
        set @i = @i + 1; 
end;
go
create index #tt1i on #temptable1(num, cc);
go
select * from #temptable1 where num > 1500 and cc < 4500
select * from #temptable1 where num = 556 and cc > 3;