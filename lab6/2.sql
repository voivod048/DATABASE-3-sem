use ��������_MyBase;
go
select Case
		when ����������_������� between 0 and 10 then '���-�� �� 10'
		when ����������_������� between 10 and 15 then '���-�� �� 10 �� 15'
		else '���-�� ������ 15'
		end as [������� �� ������],
		count(*) as ����������
	from Details_Postavshiki inner join Details
	on Details.ID = Details_Postavshiki.ID
	group by Case
		when ����������_������� between 0 and 10 then '���-�� �� 10'
		when ����������_������� between 10 and 15 then '���-�� �� 10 �� 15'
		else '���-�� ������ 15'
		end;