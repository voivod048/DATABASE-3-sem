alter view [������ > 4]
as select ID, ����������_�������
from Details_Postavshiki
where ����������_������� > 4 with check option
go
insert into [������ > 4] values (11, 4)
go
select * from [������ > 4]
