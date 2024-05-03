use Высоцкий_MyBase;
go


--CREATE TABLE #Details
--(
--    ID INT IDENTITY(1, 1) PRIMARY KEY,
--    DetailsXml XML
--);

INSERT INTO #Details (DetailsXml)
VALUES
(
    N'<Details>
        <Название_детали>Деталь 1</Название_детали>
        <Артикул>АРТ1</Артикул>
    </Details>'
),
(
    N'<Details>
        <Название_детали>Деталь 2</Название_детали>
        <Артикул>АРТ2</Артикул>
    </Details>'
),
(
    N'<Details>
        <Название_детали>Деталь 3</Название_детали>
        <Артикул>АРТ3</Артикул>
    </Details>'
);

select * from #Details;