use ��������_MyBase;
go
select ���, Details.ID, ����������_�������
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where ��� = 2
except
select ���, Details.ID, ����������_�������
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where ��� = 3
