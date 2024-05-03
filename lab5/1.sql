use Высоцкий_MyBase;
go
select Details_Postavshiki.Количество_деталей, Details_Postavshiki.ID, Postavshiki.Название
from Details_Postavshiki, Postavshiki
where Details_Postavshiki.Код = Postavshiki.Код
	and
	Название in (select Название from Postavshiki where Город like 'Минск')
	order by ID;