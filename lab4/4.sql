use ��������_MyBase;
go
select Details.��������_������, isnull(ZAKAZANO.����������, '000') ����������
	from Details left outer join ZAKAZANO
		on Details.ID = ZAKAZANO.ID
		order by Details.�������