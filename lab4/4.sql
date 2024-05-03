use Высоцкий_MyBase;
go
select Details.Название_детали, isnull(ZAKAZANO.Количество, '000') Количество
	from Details left outer join ZAKAZANO
		on Details.ID = ZAKAZANO.ID
		order by Details.Артикул