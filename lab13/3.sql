USE ��������_MyBase;
GO

--CREATE PROCEDURE PDETAILS1
  --  @p VARCHAR(15)
--AS
--BEGIN
--    DECLARE @k INT = (SELECT COUNT(*) FROM Details);
--    SELECT * FROM Details WHERE ��������_������ = @p;
--END;

CREATE TABLE #dt
(
    ��������_������ VARCHAR(40),
    ������� INT,
    ID INT
);

INSERT INTO #dt EXEC PDETAILS1 @p = '�������';
INSERT INTO #dt EXEC PDETAILS1 @p = '�������';

SELECT * FROM #dt;

DROP TABLE #dt;