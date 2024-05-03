use Высоцкий_MyBase;
go
select Details.Название_детали, Details_Postavshiki.ID, sum(Количество_деталей) as [сумма]
from Details inner join Details_Postavshiki
	on Details.ID = Details_Postavshiki.ID
group by Details.Название_детали, 
		 Details_Postavshiki.ID
order by сумма