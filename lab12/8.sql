USE ��������_MyBase;
BEGIN TRANSACTION; -- ������� ����������
    delete from [Details_Postavshiki] where ID = 1;
    INSERT INTO [Details_Postavshiki] VALUES (1, 1, 4);
	SELECT �������� FROM [Details_Postavshiki] inner join Postavshiki on [Details_Postavshiki].��� = Postavshiki.��� 
		WHERE ID = 1;
    BEGIN TRANSACTION; -- ��������� ����������
        UPDATE [Details_Postavshiki] SET ��� = 2 WHERE ID = 1;
        SELECT �������� FROM [Details_Postavshiki] inner join Postavshiki on [Details_Postavshiki].��� = Postavshiki.���
			WHERE ID = 1;
    COMMIT; -- ���������� ��������� ����������
        SELECT �������� FROM [Details_Postavshiki] inner join Postavshiki on [Details_Postavshiki].��� = Postavshiki.���
			WHERE ID = 1;
COMMIT; -- ���������� ������� ����������