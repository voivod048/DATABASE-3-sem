use ��������_MyBase;
go
select Details.��������_������,
	Postavshiki.��������,
	Details_Postavshiki.����������_�������,
	round(avg(cast(Details_Postavshiki.����������_������� as float(4))), 2)
from Details inner join Details_Postavshiki
	on Details.ID = Details_Postavshiki.ID
	inner join Postavshiki on Details_Postavshiki.��� = Postavshiki.���
where Details_Postavshiki.����������_������� >= 2
group by Details.��������_������,
	Postavshiki.��������,
	Details_Postavshiki.����������_�������