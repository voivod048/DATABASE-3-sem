use Высоцкий_MyBase;
go
select Название_детали, Артикул,  Код from Details inner join Details_Postavshiki
on Details.ID = Details_Postavshiki.ID
where Код = 1 or Код = 4
for xml AUTO,
root('Список_товаров'), elements;