	--- B UNCOMMITTED--	
	begin transaction 
	select @@SPID
	insert Details values ('�������', 2);
	update Details set ��������_������  =  '������' 
                           where ��������_������ = '���������' 
	-------------------------- t1 --------------------
	-------------------------- t2 --------------------
	rollback;


	--- B READ COMMITTED---	
begin transaction
-------------------------- t1 --------------------
update Details set ��������_������ = '�������� �����' 
      where ��������_������ = '��������� ����' 
commit; 
-------------------------- t2 --------------------


--- B REPEATABLE READ---	
	begin transaction 	  
	-------------------------- t1 --------------------
          insert Details values ('��������� �����', 4356);
          commit; 
	-------------------------- t2 --------------------


	--- B SERIALIZABLE---	
	begin transaction 	  
	delete Details where ��������_������ = '�������� �����';  
          insert Details values ('�������� �����', 1010);
          update Details set ��������_������ = '�������� �����' where ��������_������ = '�������� �����';
          select  ��������_������ from Details  where ��������_������ = '�������� �����';
          -------------------------- t1 --------------------
          commit; 
          select  ��������_������ from Details  where ��������_������ = '�������� �����';
      -------------------------- t2 --------------------
