use Высоцкий_MyBase;
go
create function FTov(@f varchar(50), @p int)
returns table
as return
select f.Название_детали, f.Артикул, p.Количество
from Details f left outer join ZAKAZANO p
on f.ID = p.ID
where f.Название_детали = isnull(@f, f.Название_детали)
and
	  p.Количество = isnull(@p, p.Количество);
go
select * from dbo.FTov(NULL, 1);
go
drop function FTov;