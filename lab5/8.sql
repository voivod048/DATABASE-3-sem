use ��������_MyBase;
go
select ��������_������, ����������_������� 
from Details inner join Details_Postavshiki
	on Details.ID = Details_Postavshiki.ID
	where ����������_������� >= any(select ����������_������� from Details_Postavshiki
										where ID = 3 or ID = 9);