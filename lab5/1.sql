use ��������_MyBase;
go
select Details_Postavshiki.����������_�������, Details_Postavshiki.ID, Postavshiki.��������
from Details_Postavshiki, Postavshiki
where Details_Postavshiki.��� = Postavshiki.���
	and
	�������� in (select �������� from Postavshiki where ����� like '�����')
	order by ID;