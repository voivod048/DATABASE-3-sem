use Высоцкий_MyBase;
go
select Название_детали, Код from Details inner join Details_Postavshiki
on Details.ID = Details_Postavshiki.ID
for xml PATH('Наличие'),
root('Список_товаров'), elements;