use ��������_MyBase;
go
select Details_Postavshiki.����������_�������, Details_Postavshiki.ID, Postavshiki.��������
from Details_Postavshiki inner join Postavshiki
	on Details_Postavshiki.��� = Postavshiki.���
where �������� in (select �������� from Postavshiki where ����� like '�����')
	order by ID;