	--- B UNCOMMITTED--	
	begin transaction 
	select @@SPID
	insert Details values ('Маховик', 2);
	update Details set Название_детали  =  'Кольца' 
                           where Название_детали = 'Подрамник' 
	-------------------------- t1 --------------------
	-------------------------- t2 --------------------
	rollback;


	--- B READ COMMITTED---	
begin transaction
-------------------------- t1 --------------------
update Details set Название_детали = 'Радиатор печки' 
      where Название_детали = 'Тормозной диск' 
commit; 
-------------------------- t2 --------------------


--- B REPEATABLE READ---	
	begin transaction 	  
	-------------------------- t1 --------------------
          insert Details values ('Топливный насос', 4356);
          commit; 
	-------------------------- t2 --------------------


	--- B SERIALIZABLE---	
	begin transaction 	  
	delete Details where Название_детали = 'Радиатор печки';  
          insert Details values ('Радиатор печки', 1010);
          update Details set Название_детали = 'Радиатор печки' where Название_детали = 'Радиатор печки';
          select  Название_детали from Details  where Название_детали = 'Радиатор печки';
          -------------------------- t1 --------------------
          commit; 
          select  Название_детали from Details  where Название_детали = 'Радиатор печки';
      -------------------------- t2 --------------------
