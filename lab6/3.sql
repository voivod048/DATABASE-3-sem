use Высоцкий_MyBase;
go
select *
from(select Код,
			Case
			when Количество_деталей between 0 and 5 then 'кол-во до 10'
			when Количество_деталей between 5 and 8 then 'кол-во от 5 до 8'
			when Количество_деталей between 8 and 12 then 'кол-во от 8 до 12'
			when Количество_деталей between 12 and 15 then 'кол-во от 12 до 15'
			else 'кол-во больше 15'
			end as [Наличие на складе],
			count(*) as Количество
		from Details_Postavshiki group by Код,
		Case
			when Количество_деталей between 0 and 5 then 'кол-во до 10'
			when Количество_деталей between 5 and 8 then 'кол-во от 5 до 8'
			when Количество_деталей between 8 and 12 then 'кол-во от 8 до 12'
			when Количество_деталей between 12 and 15 then 'кол-во от 12 до 15'
			else 'кол-во больше 15'
			end) as T