use Высоцкий_MyBase;
go
select Код, Details.ID, Количество_деталей
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where Код = 1
union
select Код, Details.ID, Количество_деталей
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where Код = 5
go
select Код, Details.ID, Количество_деталей
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where Код = 1
union all
select Код, Details.ID, Количество_деталей
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where Код = 5
