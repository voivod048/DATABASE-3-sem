select ID, ����������_�������
from Details_Postavshiki a
where ��� = (select top(1) ��� from Details_Postavshiki aa
				where aa.ID = a.ID
					order by ����������_������� desc);