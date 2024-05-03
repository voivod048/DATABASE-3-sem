select Название_детали, ID from Details
	where not exists (select * from ZAKAZANO
							where ZAKAZANO.ID = Details.ID)