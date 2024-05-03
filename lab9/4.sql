declare @z float(5), @t float(5) = 10, @x float = 5, @e float(5) = 2.71828;
if @t > @x
begin
	set @z = power(sin(@t), 2);
end
else if @t < @x
begin
	set @z = 4 * (@t + @x);
end
else
begin
	set @z = 1 - power(@e, @x - 2);
end
print 'z = ' + cast(@z as varchar(8));

