use Высоцкий_MyBase;
go
select Details_Postavshiki.Количество_деталей, Details_Postavshiki.ID, Postavshiki.Название
from Details_Postavshiki inner join Postavshiki
	on Details_Postavshiki.Код = Postavshiki.Код
where Название in (select Название from Postavshiki where Город like 'Минск')
	order by ID;