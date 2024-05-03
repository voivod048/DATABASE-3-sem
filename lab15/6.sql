use Высоцкий_MyBase;
go
create trigger AUD_AFTER_UPDA on Details after UPDATE  
       as print 'AUD_AFTER_UPDATE_A';
 return;  
go 

create trigger AUD_AFTER_UPDB on Details after UPDATE  
       as print 'AUD_AFTER_UPDATE_B';
return;  
go  

create trigger AUD_AFTER_UPDC on Details after UPDATE  
       as print 'AUD_AFTER_UPDATE_C';
 return;  
go
  select t.name, e.type_desc
       from sys.triggers  t join  sys.trigger_events e  
             on t.object_id = e.object_id  
                     where OBJECT_NAME(t.parent_id) = 'Details' and 
                         e.type_desc = 'UPDATE' ; 
go
exec SP_SETTRIGGERORDER @triggername = 'AUD_AFTER_UPDB', 
	                        @order = 'First', @stmttype = 'UPDATE';

exec SP_SETTRIGGERORDER @triggername = 'AUD_AFTER_UPDA', 
	                        @order = 'Last', @stmttype = 'UPDATE';
go
drop trigger AUD_AFTER_UPDA;
drop trigger AUD_AFTER_UPDB;
drop trigger AUD_AFTER_UPDC;