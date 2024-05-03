create table #Заказы (Номер_заказа int,
					  Наименование_товара NVARCHAR(50),
					  Цена_продажи REAL, Количество INT,
					  Дата_поставки date, Заказчик NVARCHAR(50));
go
drop procedure PINSERT;
--drop procedure TovaryInsert_X;
go
create procedure PINSERT @b NVARCHAR(50), @c REAL, @d INT
as 
begin 
    declare @rc int = 1;
    
    begin try
        insert into #Заказы (Наименование_товара, Цена_продажи, Количество)
        values (@b, @c, @d);
        
        return @rc;
    end try
    begin catch
        print 'номер ошибки ' + cast(error_number() as varchar(6));
        print 'сообщение ' + error_message();
        print 'уровень ' + cast(error_severity() as varchar(6));
        print 'метка ' + cast(error_state() as varchar(8));
        print 'номер строки ' + cast(error_line() as varchar(8));
        
        if error_procedure() is not null
            print 'имя процедуры ' + error_procedure();
        
        return -1;
    end catch;
end;
go
create  procedure TovaryInsert_X
     @a int, @b NVARCHAR(50), @c REAL, @d INT = null, 
     @e date, @f NVARCHAR(50)   
as  declare @rc int=1;                            
begin try 
    set transaction isolation level SERIALIZABLE;          
    begin tran
    insert into #Заказы (Номер_заказа, Наименование_товара,  
         Цена_продажи, Количество, Дата_поставки, Заказчик)
                                               values (@a, @b, @c, @d, @e, @f)
    exec @rc = PINSERT @b, @c, @d;  
    commit tran; 
    return @rc;           
end try
begin catch 
    print 'номер ошибки  : ' + cast(error_number() as varchar(6));
    print 'сообщение     : ' + error_message();
    print 'уровень       : ' + cast(error_severity()  as varchar(6));
    print 'метка         : ' + cast(error_state()   as varchar(8));
    print 'номер строки  : ' + cast(error_line()  as varchar(8));
    if error_procedure() is not  null   
                     print 'имя процедуры : ' + error_procedure();
     if @@trancount > 0 rollback tran ; 
     return -1;	  
end catch;
go
declare @rc int;  
exec @rc = TovaryInsert_X @a = 20, @b = 'Стол', @c = 78,
@d =  10, @e =  '01.12.2014', @f = 'Луч';  
print 'код ошибки=' + cast(@rc as varchar(3));
select * from #Заказы;
go
drop table #Заказы;
drop procedure TovaryInsert_X;