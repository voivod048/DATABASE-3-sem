use ��������_MyBase;
go
select Details.��������_������, Details_Postavshiki.ID, sum(����������_�������) as [�����]
from Details inner join Details_Postavshiki
	on Details.ID = Details_Postavshiki.ID
group by Details.��������_������, 
		 Details_Postavshiki.ID
order by �����