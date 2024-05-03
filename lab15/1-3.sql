use ��������_MyBase;
go
create table #Details1
(
	ID int identity(1, 1),
	ST varchar(20) check (ST in ('INS', 'DEL', 'UPD')),
	TRN varchar(50),
	C varchar(300)
)
go
create trigger TRIG_Det_Ins on Details after INSERT
as
declare @a1 varchar(40), @a2 int, @a3 int, @all varchar(100);
print '�������� �������';
set @a1 = (select ��������_������ from inserted);
set @a2 = (select ������� from inserted);
set @a3 = (select ID from inserted);
set @all = @a1 + ' ' + cast(@a2 as varchar(10)) + ' ' + cast(@a3 as varchar(3));
insert into #Details1(ST, TRN, C) values ('INS', 'TRIG_Det_Ins', @all);
return;
go
create trigger TRIG_Det_del on Details after DELETE
as
declare @a1 varchar(40), @a2 int, @a3 int, @all varchar(100);
print '�������� ��������';
set @a1 = (select ��������_������ from deleted);
set @a2 = (select ������� from deleted);
set @a3 = (select ID from deleted);
set @all = @a1 + ' ' + cast(@a2 as varchar(10)) + ' ' + cast(@a3 as varchar(3));
insert into #Details1(ST, TRN, C) values ('DEL', 'TRIG_Det_Del', @all);
return;
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

insert into #Details1(ST, TRN, C) values ('UPD', 'TRIG_Det_Upd', @all);
return;
go
insert into Details values('�����������', 111);
go
delete TOP(1) from Details where ������� = 111;
go
update TOP(1) Details set ������� = 20 where ������� = 10;
go
select * from #Details1;
go
drop trigger TRIG_Det_Ins;
drop trigger TRIG_Det_Upd;
drop trigger TRIG_Det_Del;
drop Table #Details1;