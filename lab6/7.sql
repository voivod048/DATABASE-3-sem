use Высоцкий_MyBase;
go
select Количество_деталей, count(*) as Количество
from Details_Postavshiki
group by Количество_деталей
having count(*) > 1
order by Количество_деталей