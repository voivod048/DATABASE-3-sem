use ��������_MyBase;
go
create function FTov(@f varchar(50), @p int)
returns table
as return
select f.��������_������, f.�������, p.����������
from Details f left outer join ZAKAZANO p
on f.ID = p.ID
where f.��������_������ = isnull(@f, f.��������_������)
and
	  p.���������� = isnull(@p, p.����������);
go
select * from dbo.FTov(NULL, 1);
go
drop function FTov;