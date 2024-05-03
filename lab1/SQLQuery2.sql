SELECT * FROM Заказы WHERE Дата_поставки > '2023-09-05';
SELECT * FROM Товары WHERE Цена > 10 AND Цена < 50;
SELECT Заказчик FROM Заказы WHERE Наименование_товара = 'Frontend';
SELECT Наименование_товара FROM Заказы WHERE Заказчик = 'Google' ORDER BY Дата_поставки;