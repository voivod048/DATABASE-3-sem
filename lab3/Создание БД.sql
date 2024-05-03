use master;
go
create database [Высоцкий_MyBase] on primary
	(name='lab3_mdf', filename='E:\DB\lab3\lab3_mdf.mdf', size=10240Kb, maxsize=UNLIMITED, filegrowth=1024Kb),
filegroup FG1
	(name='lab3_1ndf', filename='E:\DB\lab3\lab3_1ndf.ndf', size=10240Kb, maxsize=100Mb, filegrowth=1024Kb),
	(name='lab3_2ndf', filename='E:\DB\lab3\lab3_2ndf.ndf', size=10240Kb, maxsize=100Mb, filegrowth=1024Kb)
log on
	(name='lab3_ldf', filename='E:\DB\lab3\lab3_log.ldf', size=10240Kb, maxsize=500Mb, filegrowth=10%);
