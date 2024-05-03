use Высоцкий_MyBase;
go
select Case
		when Количество_деталей between 0 and 10 then 'кол-во до 10'
		when Количество_деталей between 10 and 15 then 'кол-во от 10 до 15'
		else 'кол-во больше 15'
		end as [Наличие на складе],
		count(*) as Количество
	from Details_Postavshiki inner join Details
	on Details.ID = Details_Postavshiki.ID
	group by Case
		when Количество_деталей between 0 and 10 then 'кол-во до 10'
		when Количество_деталей between 10 and 15 then 'кол-во от 10 до 15'
		else 'кол-во больше 15'
		end;