CREATE TABLE Postavshiki(
	��� INT,
	�������� VARCHAR(40),
	����� VARCHAR(30),
	������� VARCHAR(15)
);
CREATE TABLE Details(
	��������_������ VARCHAR(30),
	������� INT,
	ID INT
);
CREATE TABLE Details_Postavshiki(
	��� INT,
	ID INT,
	����������_������� INT
);
CREATE TABLE Zakazy(
	Number INT,
	Date_zakaza DATE
);
CREATE TABLE ZAKAZANO(
	Number INT,
	ID INT,
	���������� INT
)