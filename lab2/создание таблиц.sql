CREATE TABLE Postavshiki(
	Код INT,
	Название VARCHAR(40),
	Адрес VARCHAR(30),
	Телефон VARCHAR(15)
);
CREATE TABLE Details(
	Название_детали VARCHAR(30),
	Артикул INT,
	ID INT
);
CREATE TABLE Details_Postavshiki(
	Код INT,
	ID INT,
	Количество_деталей INT
);
CREATE TABLE Zakazy(
	Number INT,
	Date_zakaza DATE
);
CREATE TABLE ZAKAZANO(
	Number INT,
	ID INT,
	Количество INT
)