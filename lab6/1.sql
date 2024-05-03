use Высоцкий_MyBase;
go
select Название_детали, count(*) as [Количество заказов], max(Количество) as [Макс. кол-во в заказе]
from Details inner join ZAKAZANO on Details.ID = ZAKAZANO.ID
group by Название_детали;