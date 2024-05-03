USE Высоцкий_MyBase;
GO

--CREATE PROCEDURE PDETAILS1
  --  @p VARCHAR(15)
--AS
--BEGIN
--    DECLARE @k INT = (SELECT COUNT(*) FROM Details);
--    SELECT * FROM Details WHERE Название_детали = @p;
--END;

CREATE TABLE #dt
(
    Название_детали VARCHAR(40),
    Артикул INT,
    ID INT
);

INSERT INTO #dt EXEC PDETAILS1 @p = 'Полуось';
INSERT INTO #dt EXEC PDETAILS1 @p = 'Турбина';

SELECT * FROM #dt;

DROP TABLE #dt;