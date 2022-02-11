create table cust (custid int identity, custname varchar(50), custcity varchar (50), 
custstate varchar(50), custcountry varchar(50), custnumber nchar (50))

insert into cust values ('krunal','nagpur','mah','india',111)
insert into cust values ('vivek','pune','mah','india',222)
insert into cust values ('virat','mumbai','mah','india',333)

select*from cust

---------------------------------------------------------------------------------

create table cust_history (
custid int, custname varchar(50), 
custcity varchar (50),custstate varchar(50), custcountry varchar(50), 
custnumber nchar (50), updated_at datetime NOT NULL, operation char(3) not null,
check ( operation ='ins' or operation='del'))



--------------------------------------------------------------------------------

create trigger trg_cust_history
on cust
after insert, delete
as begin 
set nocount on
insert into cust_history(
custid, custname,custcity,custstate,custcountry,custnumber,updated_at, operation)
select
i.custid, custname, custcity, custstate, custcountry,custnumber, getdate(), 'ins'
from inserted i
union all
select
d.custid, custname, custcity, custstate, custcountry, custnumber, getdate(), 'del'
from deleted d
end


------------------------------------------------------------------------------

insert into cust values ('ravina','aurangabad','mah','india',444)
select*from cust_history
insert into cust values ('ketan','hydrabad','mah','india',555)
select*from cust
delete from cust where custid=3 
 