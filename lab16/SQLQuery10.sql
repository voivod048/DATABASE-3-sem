use ��������_MyBase;
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
        <��������_������>������ 1</��������_������>
        <�������>���1</�������>
    </Details>'
),
(
    N'<Details>
        <��������_������>������ 2</��������_������>
        <�������>���2</�������>
    </Details>'
),
(
    N'<Details>
        <��������_������>������ 3</��������_������>
        <�������>���3</�������>
    </Details>'
);

select * from #Details;