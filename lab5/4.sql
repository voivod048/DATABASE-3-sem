select ID, Количество_деталей
from Details_Postavshiki a
where Код = (select top(1) Код from Details_Postavshiki aa
				where aa.ID = a.ID
					order by Количество_деталей desc);