declare @a char = 'a',
		@b varchar(4) = 'abcd',
		@c datetime,
		@d time,
		@e int,
		@f smallint,
		@g tinyint,
		@h numeric(12, 5);
set @c = getdate();
set	@d = getdate();
set @e = 150;
select @f = 10, @g = 5, @h = 7.2345;
select @a a, @b b, @c c, @d d, @e e;
print @f; 
print @g;
print @h;