drop table #����������;
go
create table #���������� 
(    �����������  nvarchar(50) primary key,
	 �����  xml 
 );
go
insert into #���������� (�����������,  �����)
    values ('���������', '<�����>  <������>��������</������>
	           <�����>�����</�����>  <�����>������</�����>
	           <���>52</���>    </�����>'); 
insert into #���������� (�����������,  �����)
    values ('���������', '<�����>   <������>��������</������>
	          <�����>�����</�����>  <�����>�������������</�����>
	          <���>35</���>   </�����>'); 

select * from #����������;

update #���������� 
        set ����� = '<�����> <������>��������</������> 
             <�����>�����</�����>	  <�����>�������������</�����>
             <���>45</���> </�����>' 
                where �����.value('(/�����/���)[1]','varchar(10)') = 35;
				go
select �����������, 
     �����.value('(/�����/������)[1]','varchar(10)') [������],
     �����.query('/�����')        [�����]
             from  #����������;       
