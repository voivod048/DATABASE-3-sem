use ��������_MyBase;
go
select ����������_�������, count(*) as ����������
from Details_Postavshiki
group by ����������_�������
having count(*) > 1
order by ����������_�������