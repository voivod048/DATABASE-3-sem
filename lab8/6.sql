use ��������_MyBase
go
create view [������ � �����������3] with schemabinding as
select ��������_������, ����������_�������, ���
from dbo.Details d inner join dbo.Details_Postavshiki dp
on d.ID = dp.ID

go
select * from [������ � �����������3]
go
drop view [������ � �����������3]