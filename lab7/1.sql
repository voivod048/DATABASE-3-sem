use ��������_MyBase
go
select ��������_������, ���,  sum(����������_�������) as ����������
from Details inner join Details_Postavshiki
on Details.ID = Details_Postavshiki.ID
group by ��������_������, ��� with Rollup;