use ��������_MyBase;
go
create trigger Det_INSTEAD_OF on Details instead of DELETE
as raiserror(N'�������� ���������', 10, 1);
return;
go
delete from Details where ID = 1;
go
drop trigger Det_INSTEAD_OF;