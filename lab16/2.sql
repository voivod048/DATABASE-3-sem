use ��������_MyBase;
go
select ��������_������, �������,  ��� from Details inner join Details_Postavshiki
on Details.ID = Details_Postavshiki.ID
where ��� = 1 or ��� = 4
for xml AUTO,
root('������_�������'), elements;