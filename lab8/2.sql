use ��������_MyBase
go
create view [������ � �����������2] as
select ��������_������, ����������_�������, ���
from Details inner join Details_Postavshiki
on Details.ID = Details_Postavshiki.ID

go
select * from [������ � �����������2]
go
drop view [������ � �����������2]