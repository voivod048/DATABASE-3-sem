select Details.��������_������, Details_Postavshiki.���,
	case
	when (Details_Postavshiki.����������_������� between 0 and 5) then '���� �������'
	when (Details_Postavshiki.����������_������� between 5 and 10) then '����� �����������'
	when (Details_Postavshiki.����������_������� between 10 and 20) then '���� � �������'
	end as �������
from Details inner join Details_Postavshiki on Details.ID = Details_Postavshiki.ID
	order by Details.�������;