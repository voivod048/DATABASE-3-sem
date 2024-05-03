use Высоцкий_MyBase;
go
set nocount on
declare @c int, @flag char = 'c';
SET IMPLICIT_TRANSACTIONS  ON
	INSERT Details_Postavshiki values (1, 2, 3),(1, 2, 3),(1, 2, 3);
	set @c = (select count(*) from Details_Postavshiki);
	print 'количество строк в таблице Details_Postavshiki: ' + cast(@c as varchar(2));
	if @flag = 'c'  commit; 
          else   rollback;  
  SET IMPLICIT_TRANSACTIONS  OFF