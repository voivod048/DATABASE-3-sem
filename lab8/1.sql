use Высоцкий_MyBase
go
create view [Товары у поставщиков] as
select Количество_деталей, Код
from Details_Postavshiki

go
select * from [Товары у поставщиков]

go
drop view [Товары у поставщиков]