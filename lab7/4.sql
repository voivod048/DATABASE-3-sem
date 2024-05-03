use Высоцкий_MyBase
go
select Количество_деталей
from Details_Postavshiki
where Код between 1 and 4
intersect
select Количество_деталей
from Details_Postavshiki
where Код between 4 and 16;
