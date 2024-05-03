create table #������ (�����_������ int,
					  ������������_������ NVARCHAR(50),
					  ����_������� REAL, ���������� INT,
					  ����_�������� date, �������� NVARCHAR(50));
go
drop procedure PINSERT;
--drop procedure TovaryInsert_X;
go
create procedure PINSERT @b NVARCHAR(50), @c REAL, @d INT
as 
begin 
    declare @rc int = 1;
    
    begin try
        insert into #������ (������������_������, ����_�������, ����������)
        values (@b, @c, @d);
        
        return @rc;
    end try
    begin catch
        print '����� ������ ' + cast(error_number() as varchar(6));
        print '��������� ' + error_message();
        print '������� ' + cast(error_severity() as varchar(6));
        print '����� ' + cast(error_state() as varchar(8));
        print '����� ������ ' + cast(error_line() as varchar(8));
        
        if error_procedure() is not null
            print '��� ��������� ' + error_procedure();
        
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
    insert into #������ (�����_������, ������������_������,  
         ����_�������, ����������, ����_��������, ��������)
                                               values (@a, @b, @c, @d, @e, @f)
    exec @rc = PINSERT @b, @c, @d;  
    commit tran; 
    return @rc;           
end try
begin catch 
    print '����� ������  : ' + cast(error_number() as varchar(6));
    print '���������     : ' + error_message();
    print '�������       : ' + cast(error_severity()  as varchar(6));
    print '�����         : ' + cast(error_state()   as varchar(8));
    print '����� ������  : ' + cast(error_line()  as varchar(8));
    if error_procedure() is not  null   
                     print '��� ��������� : ' + error_procedure();
     if @@trancount > 0 rollback tran ; 
     return -1;	  
end catch;
go
declare @rc int;  
exec @rc = TovaryInsert_X @a = 20, @b = '����', @c = 78,
@d =  10, @e =  '01.12.2014', @f = '���';  
print '��� ������=' + cast(@rc as varchar(3));
select * from #������;
go
drop table #������;
drop procedure TovaryInsert_X;