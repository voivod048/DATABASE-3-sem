use ��������_MyBase;
go
select ���, Details.ID, ����������_�������
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where ��� = 1
union
select ���, Details.ID, ����������_�������
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where ��� = 5
go
select ���, Details.ID, ����������_�������
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where ��� = 1
union all
select ���, Details.ID, ����������_�������
from Details_Postavshiki inner join Details
on Details.ID = Details_Postavshiki.ID
where ��� = 5
