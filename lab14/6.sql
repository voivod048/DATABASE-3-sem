CREATE FUNCTION dbo.GetProductIDCount(@tz int) RETURNS INT
AS
BEGIN
    DECLARE @Count INT;

    SELECT @Count = COUNT(ID)
    FROM Details_Postavshiki
    WHERE ID = @tz;

    RETURN @Count;
END;
go
CREATE FUNCTION dbo.GetProductName(@tz int) RETURNS VARCHAR(300)
AS
BEGIN
    DECLARE @ProductName VARCHAR(300);

    SELECT @ProductName = Название_детали
            FROM Details
            WHERE ID = @tz
    RETURN @ProductName;
END;
go
CREATE FUNCTION dbo.GetProductPrice(@tz int) RETURNS int
AS
BEGIN
    DECLARE @ProductPrice int;

    SELECT @ProductPrice = AVG(Количество_деталей)
    FROM Details_Postavshiki
    WHERE ID = @tz;

    RETURN @ProductPrice;
END;
go
CREATE FUNCTION dbo.allcount
(
    @tz int
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        dbo.GetProductIDCount(@tz) AS ProductIDCount,
        dbo.GetProductName(@tz) AS ProductIDs,
        dbo.GetProductPrice(@tz) AS AvgProductPrice
);
go
SELECT *
FROM dbo.allcount(9);
go
drop function dbo.allcount;
drop function dbo.GetProductIDCount;
drop function dbo.GetProductName;
drop function dbo.GetProductPrice;