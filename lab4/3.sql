select Details.Название_детали, Details_Postavshiki.Код,
	case
	when (Details_Postavshiki.Количество_деталей between 0 and 5) then 'мало деталей'
	when (Details_Postavshiki.Количество_деталей between 5 and 10) then 'скоро закончаться'
	when (Details_Postavshiki.Количество_деталей between 10 and 20) then 'есть в наличии'
	end as Наличие
from Details inner join Details_Postavshiki on Details.ID = Details_Postavshiki.ID
	order by Details.Артикул;