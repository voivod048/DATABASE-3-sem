use ��������_MyBase;
go
select ��������_������, count(*) as [���������� �������], max(����������) as [����. ���-�� � ������]
from Details inner join ZAKAZANO on Details.ID = ZAKAZANO.ID
group by ��������_������;