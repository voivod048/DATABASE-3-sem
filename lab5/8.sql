use Высоцкий_MyBase;
go
select Название_детали, Количество_деталей 
from Details inner join Details_Postavshiki
	on Details.ID = Details_Postavshiki.ID
	where Количество_деталей >= any(select Количество_деталей from Details_Postavshiki
										where ID = 3 or ID = 9);