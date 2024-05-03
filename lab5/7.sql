use Высоцкий_MyBase;
go
select Название_детали, Date_zakaza 
from Details as d inner join ZAKAZANO as z
	on d.ID = z.ID
where Date_zakaza >= all(select Date_zakaza from ZAKAZANO
									where ID = 3);