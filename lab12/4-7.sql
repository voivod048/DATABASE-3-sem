-- A UNCOMMITTED---
	set transaction isolation level READ UNCOMMITTED 
	begin transaction 
	-------------------------- t1 ------------------
	select @@SPID, 'insert Details' '���������', * from Details 
         where ��������_������ = '�������';
	select @@SPID, 'insert Details' '���������', ��������_������, 
                      ������� from Details   where ��������_������ = '������';
	commit; 
	-------------------------- t2 -----------------


	-- A READ COMMITTED ---
set transaction isolation level READ COMMITTED 
begin transaction 
select count(*) from Details where ��������_������ = '�������� �����';
-------------------------- t1 ------------------ 
-------------------------- t2 -----------------
select  'update ������'  '���������', count(*)
	 from Details  where ��������_������ = '�������� �����';
commit; 


-- A REPEATABLE READ---
          set transaction isolation level  REPEATABLE READ 
	begin transaction 
	select ������� from Details where ��������_������ = '��������� �����';
	-------------------------- t1 ------------------ 
	-------------------------- t2 -----------------
	select  case
          when ������� = 4356 then 'insert' else ' ' 
end '���������', ������� from Details  where ��������_������ = '��������� �����';
	commit; 


  -- A SERIALIZABLE---
	insert Details values ('�������� �����', 1010);
	insert Details values ('�������� �����', 1010);
      set transaction isolation level SERIALIZABLE 
begin transaction 
delete Details where ��������_������ = '�������� �����';  
      insert Details values ('�������� �����', 1010);
      update Details set ��������_������ = '�������� �����' where ��������_������ = '�������� �����';
      select ��������_������ from Details  where ��������_������ = '�������� �����';
-------------------------- t1 -----------------
select  ��������_������ from Details  where ��������_������ = '�������� �����';
-------------------------- t2 ------------------ 
commit;
insert Details values ('�������� �����', 1010);
insert Details values ('�������� �����', 1010);
