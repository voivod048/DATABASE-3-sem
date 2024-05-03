use Высоцкий_MyBase
go
select Название_детали, Код,  sum(Количество_деталей) as Количество
from Details inner join Details_Postavshiki
on Details.ID = Details_Postavshiki.ID
group by Название_детали, Код with Rollup;