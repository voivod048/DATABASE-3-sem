use ��������_MyBase;
go
select Details.��������_������, Details_Postavshiki.����������_�������
from Details inner join Details_Postavshiki
on Details.ID = Details_Postavshiki.ID and (Details.��������_������ like '%�%' or Details.��������_������ like '%�%')