use ��������_MyBase
go

declare @h int = 0,
  @x varchar(2000) = ' <?xml version="1.0" encoding="windows-1251" ?>
   <������> 
   <����� ��������_������="�������" �������="40" /> 
   <����� ��������_������="�������" �������="10" /> 
   <����� ��������_������="���������" �������="400" />  
   </������>';

exec sp_xml_preparedocument @h output, @x;  -- ���������� ��������� 

select *
from openxml(@h, '/������/�����', 0)
with
(
    [��������_������] nvarchar(20),
    ������� int
)

insert Details select ��������_������, ������� 
                   from openxml(@h, '/������/�����', 0)     
                        with([��������_������] nvarchar(20), ������� int)    


exec sp_xml_removedocument @h;


