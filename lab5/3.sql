use ��������_MyBase;
go
select Details_Postavshiki.����������_�������, Details_Postavshiki.ID, Details.��������_������, Postavshiki.��������
from Details_Postavshiki inner join Details
	on Details_Postavshiki.ID = Details.ID
	inner join Postavshiki
		on Details_Postavshiki.��� = Postavshiki.��� 
		where (����� like '�����')
	order by ID;