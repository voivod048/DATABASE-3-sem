use ��������_MyBase;
go
create trigger Det_Tran on Details after INSERT, DELETE, UPDATE
as declare @c int = (select sum(����������_�������) from Details_Postavshiki);

begin try
    if @c > 200
	raiserror(N'����� ���-�� �� ����� ��������� 200', 10, 1);
end try
begin catch
	print error_message();
	print error_number();
	rollback;
end catch;
return;
go
update Details_Postavshiki set ����������_������� = 100 where ����������_������� = 2;
go
drop trigger Det_Tran;