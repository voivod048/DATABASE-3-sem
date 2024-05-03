use Высоцкий_MyBase
go

declare @h int = 0,
  @x varchar(2000) = ' <?xml version="1.0" encoding="windows-1251" ?>
   <товары> 
   <товар Название_детали="Турбина" Артикул="40" /> 
   <товар Название_детали="Маховик" Артикул="10" /> 
   <товар Название_детали="Термостат" Артикул="400" />  
   </товары>';

exec sp_xml_preparedocument @h output, @x;  -- подготовка документа 

select *
from openxml(@h, '/товары/товар', 0)
with
(
    [Название_детали] nvarchar(20),
    Артикул int
)

insert Details select Название_детали, Артикул 
                   from openxml(@h, '/товары/товар', 0)     
                        with([Название_детали] nvarchar(20), Артикул int)    


exec sp_xml_removedocument @h;


