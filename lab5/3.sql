use Высоцкий_MyBase;
go
select Details_Postavshiki.Количество_деталей, Details_Postavshiki.ID, Details.Название_детали, Postavshiki.Название
from Details_Postavshiki inner join Details
	on Details_Postavshiki.ID = Details.ID
	inner join Postavshiki
		on Details_Postavshiki.Код = Postavshiki.Код 
		where (Город like 'Минск')
	order by ID;