use Высоцкий_MyBase;
go
create table Details(
	Название_детали varchar(40) not null,
	Артикул int,
	ID int primary key identity(1,1)
);
create table Postavshiki(
	Код int primary key identity(1,1),
	Название varchar(40),
	Город varchar(20),
	Телефон varchar(15),
	Улица varchar(40),
	Дом varchar(5)
);

create table Details_Postavshiki(
	Код int not null foreign key references Postavshiki(Код),
	ID int not null foreign key references Details(ID),
	Количество_деталей int,
	ID_dp int primary key identity(1,1)
);

create table ZAKAZANO(
	Number int primary key identity(1,1),
	ID int not null foreign key references Details(ID),
	Количество int,
	Date_zakaza date
)on FG1;