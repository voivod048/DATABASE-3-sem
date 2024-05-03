drop table #temptable2;
go
CREATE table #temptable2
(    
      num int, 
      cc int identity(1, 1),
      str1 varchar(100)
);

set nocount on;           
declare @i int = 0;
while   @i < 20000
begin
     INSERT #temptable2(num, str1) values(floor(30000*RAND()), replicate('строка ', 10));
      set @i = @i + 1; 
end;
go
create index #tt2i on #temptable2(num) include (cc)
select cc from #temptable2 where num > 15000