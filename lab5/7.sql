use ��������_MyBase;
go
select ��������_������, Date_zakaza 
from Details as d inner join ZAKAZANO as z
	on d.ID = z.ID
where Date_zakaza >= all(select Date_zakaza from ZAKAZANO
									where ID = 3);