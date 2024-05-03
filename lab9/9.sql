begin try
	select 1/0;
end try
begin catch
    print '������ �����: ' + CAST(ERROR_NUMBER() AS NVARCHAR(10));
    print '��������� �� ������: ' + ERROR_MESSAGE();
    print '����� ������ � �������: ' + CAST(ERROR_LINE() AS NVARCHAR(10));
    print '��� ���������: ' + ISNULL(ERROR_PROCEDURE(), 'NULL');
    print '������� ����������� ������: ' + CAST(ERROR_SEVERITY() AS NVARCHAR(10));
    print '����� ������: ' + CAST(ERROR_STATE() AS NVARCHAR(10));
end catch;