alter view [Детали > 4]
as select ID, Количество_деталей
from Details_Postavshiki
where Количество_деталей > 4 with check option
go
insert into [Детали > 4] values (11, 4)
go
select * from [Детали > 4]
