use Высоцкий_MyBase;
DECLARE Tovary CURSOR GLOBAL                          
	             for SELECT Название_детали, Артикул from Details;
DECLARE @tv nvarchar(50), @art int;      
	OPEN Tovary;	  
	fetch  Tovary into @tv, @art; 	
      print '1. ' + @tv + ' ' + cast(@art as varchar(6));   
      go
 DECLARE @tv nvarchar(20), @art int;     	
	fetch  Tovary into @tv, @art; 	
      print '2. ' + @tv + ' ' + cast(@art as varchar(6));  
  go
deallocate Tovary;