use ��������_MyBase;
go
create table Details(
	��������_������ varchar(40) not null,
	������� int,
	ID int primary key identity(1,1)
);
create table Postavshiki(
	��� int primary key identity(1,1),
	�������� varchar(40),
	����� varchar(20),
	������� varchar(15),
	����� varchar(40),
	��� varchar(5)
);

create table Details_Postavshiki(
	��� int not null foreign key references Postavshiki(���),
	ID int not null foreign key references Details(ID),
	����������_������� int,
	ID_dp int primary key identity(1,1)
);

create table ZAKAZANO(
	Number int primary key identity(1,1),
	ID int not null foreign key references Details(ID),
	���������� int,
	Date_zakaza date
)on FG1;