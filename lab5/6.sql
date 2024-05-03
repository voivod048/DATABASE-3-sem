use Высоцкий_MyBase;
go
select top(1) (select avg(Количество_деталей) from Details_Postavshiki
					where ID = 3) as Термостат,
			  (select avg(Количество_деталей) from Details_Postavshiki
					where ID = 9) as Топливный_насос,
			  (select avg(Количество_деталей) from Details_Postavshiki
					where ID = 1) as Поршень
from Details_Postavshiki;