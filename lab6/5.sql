use ��������_MyBase;
go
select * from
(select Details.��������_������,
	Postavshiki.��������,
	Details_Postavshiki.����������_�������,
	round(avg(cast(Details_Postavshiki.����������_������� as float(4))), 2) as Func
from Details inner join Details_Postavshiki
	on Details.ID = Details_Postavshiki.ID
	inner join Postavshiki on Details_Postavshiki.��� = Postavshiki.���
group by Details.��������_������,
	Postavshiki.��������,
	Details_Postavshiki.����������_�������) as T
where ����������_������� >= 2