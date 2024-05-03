
go
create function Count_Details(@f int) returns int as
begin
declare @rc int = 0;
set @rc = (select count(*) from Details inner join Details_Postavshiki
	on Details.ID = Details_Postavshiki.ID
		where Код = @f);
return @rc;
end;
go

declare @count int = dbo.Count_Details(3);
print @count;
go

select dbo.Count_Details(3) from Details_Postavshiki;
go

alter function dbo.Count_Details(@f int, @id int) returns int as
begin
declare @rc int = 0;
set @rc = (select count(*) from Details inner join Details_Postavshiki
	on Details.ID = Details_Postavshiki.ID
		where Код = @f and Details.ID = @id);
return @rc;
end;
go
declare @count int = dbo.Count_Details(3, 1);
print @count;
go

drop function dbo.Count_Details;
