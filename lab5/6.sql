use ��������_MyBase;
go
select top(1) (select avg(����������_�������) from Details_Postavshiki
					where ID = 3) as ���������,
			  (select avg(����������_�������) from Details_Postavshiki
					where ID = 9) as ���������_�����,
			  (select avg(����������_�������) from Details_Postavshiki
					where ID = 1) as �������
from Details_Postavshiki;