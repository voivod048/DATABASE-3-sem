use Высоцкий_MyBase;
go
select Код, Details.ID, Количество_деталей
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where Код = 2
except
select Код, Details.ID, Количество_деталей
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where Код = 3
