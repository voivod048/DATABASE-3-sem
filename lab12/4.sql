-- A UNCOMMITTED---
	set transaction isolation level READ UNCOMMITTED 
	begin transaction 
	-------------------------- t1 ------------------
	select @@SPID, 'insert Details' 'результат', * from Details 
         where Название_детали = 'Маховик';
	select @@SPID, 'insert Details' 'результат', Название_детали, 
                      Артикул from Details   where Название_детали = 'Кольца';
	commit; 
	-------------------------- t2 -----------------


	-- A READ COMMITTED ---
set transaction isolation level READ COMMITTED 
begin transaction 
select count(*) from Details where Название_детали = 'Радиатор печки';
-------------------------- t1 ------------------ 
-------------------------- t2 -----------------
select  'update Заказы'  'результат', count(*)
	 from Details  where Название_детали = 'Радиатор печки';
commit; 


-- A REPEATABLE READ---
          set transaction isolation level  REPEATABLE READ 
	begin transaction 
	select Артикул from Details where Название_детали = 'Топливный насос';
	-------------------------- t1 ------------------ 
	-------------------------- t2 -----------------
	select  case
          when Артикул = 4356 then 'insert' else ' ' 
end 'результат', Артикул from Details  where Название_детали = 'Топливный насос';
	commit; 


  -- A SERIALIZABLE---
	insert Details values ('Радиатор печки', 1010);
	insert Details values ('Радиатор печки', 1010);
      set transaction isolation level SERIALIZABLE 
begin transaction 
delete Details where Название_детали = 'Радиатор печки';  
      insert Details values ('Радиатор печки', 1010);
      update Details set Название_детали = 'Радиатор печки' where Название_детали = 'Радиатор печки';
      select Название_детали from Details  where Название_детали = 'Радиатор печки';
-------------------------- t1 -----------------
select  Название_детали from Details  where Название_детали = 'Радиатор печки';
-------------------------- t2 ------------------ 
commit;
insert Details values ('Радиатор печки', 1010);
insert Details values ('Радиатор печки', 1010);
