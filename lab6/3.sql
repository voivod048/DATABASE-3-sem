use ��������_MyBase;
go
select *
from(select ���,
			Case
			when ����������_������� between 0 and 5 then '���-�� �� 10'
			when ����������_������� between 5 and 8 then '���-�� �� 5 �� 8'
			when ����������_������� between 8 and 12 then '���-�� �� 8 �� 12'
			when ����������_������� between 12 and 15 then '���-�� �� 12 �� 15'
			else '���-�� ������ 15'
			end as [������� �� ������],
			count(*) as ����������
		from Details_Postavshiki group by ���,
		Case
			when ����������_������� between 0 and 5 then '���-�� �� 10'
			when ����������_������� between 5 and 8 then '���-�� �� 5 �� 8'
			when ����������_������� between 8 and 12 then '���-�� �� 8 �� 12'
			when ����������_������� between 12 and 15 then '���-�� �� 12 �� 15'
			else '���-�� ������ 15'
			end) as T