use Высоцкий_MyBase;
go
select Details.Название_детали, Details_Postavshiki.Количество_деталей
from Details cross join Details_Postavshiki
where Details.ID = Details_Postavshiki.ID