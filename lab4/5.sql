use Высоцкий_MyBase;
go
select Details.Название_детали, ZAKAZANO.Количество as Количество_заказанных_деталей, ZAKAZANO.Number as Номер_покупателя
from Details inner join ZAKAZANO
on Details.ID = ZAKAZANO.ID
order by Номер_покупателя;
