use ��������_MyBase;
go
create table #Details3
(
	ID int identity(1, 1),
	ST varchar(20) check (ST in ('INS', 'DEL', 'UPD')),
	TRN varchar(50),
	C varchar(300)
)
go
create trigger TRIG_Det_Upd on Details after UPDATE
as
declare @a1 varchar(40), @a2 int, @a3 int, @all varchar(100);
print '�������� ���������';
set @a1 = (select ��������_������ from inserted);
set @a2 = (select ������� from inserted);
set @a3 = (select ID from inserted);
set @all = @a1 + ' ' + cast(@a2 as varchar(10)) + ' ' + cast(@a3 as varchar(3));
set @a1 = (select ��������_������ from deleted);
set @a2 = (select ������� from deleted);
set @a3 = (select ID from deleted);
set @all = @a1 + ' ' + cast(@a2 as varchar(10)) + ' ' + cast(@a3 as varchar(3));

insert into #Details3(ST, TRN, C) values ('UPD', 'TRIG_Det_Upd', @all);
return;
go
update Details set ��������_������ = NULL where ������� = 234352;
go
select * from #Details3;
go
drop table #Details3;
drop trigger TRIG_Det_Upd;