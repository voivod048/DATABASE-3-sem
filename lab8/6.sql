use Высоцкий_MyBase
go
create view [Товары у поставщиков3] with schemabinding as
select Название_детали, Количество_деталей, Код
from dbo.Details d inner join dbo.Details_Postavshiki dp
on d.ID = dp.ID

go
select * from [Товары у поставщиков3]
go
drop view [Товары у поставщиков3]