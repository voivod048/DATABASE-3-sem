use Высоцкий_MyBase
go
create view [Товары у поставщиков2] as
select Название_детали, Количество_деталей, Код
from Details inner join Details_Postavshiki
on Details.ID = Details_Postavshiki.ID

go
select * from [Товары у поставщиков2]
go
drop view [Товары у поставщиков2]