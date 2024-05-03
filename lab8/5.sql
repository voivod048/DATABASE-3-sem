go
create view [Инфа об деталях]
as select TOP 10 ID, Артикул, Название_детали
from Details
order by Артикул
go
select * from [Инфа об деталях]
go
drop view [Инфа об деталях]