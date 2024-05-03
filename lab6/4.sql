use Высоцкий_MyBase;
go
select Details.Название_детали,
	Postavshiki.Название,
	Details_Postavshiki.Количество_деталей,
	round(avg(cast(Details_Postavshiki.Количество_деталей as float(4))), 2)
from Details inner join Details_Postavshiki
	on Details.ID = Details_Postavshiki.ID
	inner join Postavshiki on Details_Postavshiki.Код = Postavshiki.Код
where Details_Postavshiki.Количество_деталей >= 2
group by Details.Название_детали,
	Postavshiki.Название,
	Details_Postavshiki.Количество_деталей