use tempdb;
go
DROP TABLE #EX;
GO
CREATE TABLE #EX
(    TKEY int, 
     CC int identity(1, 1),
     TF varchar(100)
);
set nocount on;           
declare @i int = 0;
while   @i < 20000
begin
     INSERT #EX(TKEY, TF) values(floor(30000*RAND()), replicate('строка ', 10));
      set @i = @i + 1; 
end;
go
select * from #EX;
go
CREATE index #EX_TKEY ON #EX(TKEY);
go
declare @i int = 0;

while   @i < 20000
begin
     INSERT #EX(TKEY, TF) values(floor(30000*RAND()), replicate('строка ', 10));
      set @i = @i + 1; 
end;
go
SELECT name [Индекс], avg_fragmentation_in_percent [Фрагментация (%)]
FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'), 
OBJECT_ID(N'#EX'), NULL, NULL, NULL) ss  JOIN sys.indexes ii on ss.object_id = ii.object_id and ss.index_id = ii.index_id  WHERE name is not null;
go
ALTER index #EX_TKEY on #EX reorganize;
go
SELECT name [Индекс], avg_fragmentation_in_percent [Фрагментация (%)]
FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'), 
OBJECT_ID(N'#EX'), NULL, NULL, NULL) ss  JOIN sys.indexes ii on ss.object_id = ii.object_id and ss.index_id = ii.index_id  WHERE name is not null;
go
ALTER index #EX_TKEY on #EX rebuild with (online = off);
go
SELECT name [Индекс], avg_fragmentation_in_percent [Фрагментация (%)]
FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'), 
OBJECT_ID(N'#EX'), NULL, NULL, NULL) ss  JOIN sys.indexes ii on ss.object_id = ii.object_id and ss.index_id = ii.index_id  WHERE name is not null;

