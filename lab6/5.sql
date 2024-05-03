use Высоцкий_MyBase;
go
select * from
(select Details.Название_детали,
	Postavshiki.Название,
	Details_Postavshiki.Количество_деталей,
	round(avg(cast(Details_Postavshiki.Количество_деталей as float(4))), 2) as Func
from Details inner join Details_Postavshiki
	on Details.ID = Details_Postavshiki.ID
	inner join Postavshiki on Details_Postavshiki.Код = Postavshiki.Код
group by Details.Название_детали,
	Postavshiki.Название,
	Details_Postavshiki.Количество_деталей) as T
where Количество_деталей >= 2