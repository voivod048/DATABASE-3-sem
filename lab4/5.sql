use ��������_MyBase;
go
select Details.��������_������, ZAKAZANO.���������� as ����������_����������_�������, ZAKAZANO.Number as �����_����������
from Details inner join ZAKAZANO
on Details.ID = ZAKAZANO.ID
order by �����_����������;
