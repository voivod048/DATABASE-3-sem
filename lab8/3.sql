create view [Детали > 4](Код, ID, Количество_деталей, ID_dp)
as select Код, ID, Количество_деталей, ID_dp
from Details_Postavshiki
where Количество_деталей > 4
go
insert into [Детали > 4](ID, Количество_деталей) values (10, 10)
go
select * from [Детали > 4]