use Высоцкий_MyBase;
go
select Details.Название_детали, Details_Postavshiki.Количество_деталей
from Details inner join Details_Postavshiki
on Details.ID = Details_Postavshiki.ID and (Details.Название_детали like '%т%' or Details.Название_детали like '%Т%')