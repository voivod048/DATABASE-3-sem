use ��������_MyBase;
go
select ��������_������, ��� from Details inner join Details_Postavshiki
on Details.ID = Details_Postavshiki.ID
for xml PATH('�������'),
root('������_�������'), elements;