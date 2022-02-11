create table rishi ( rishiid int identity primary key, rishiname varchar(20),
rishicity varchar(20), rishistate varchar(20))

create table vikrant ( vikid int, vikname varchar(20),vikcity varchar(20) 
constraint kru foreign key (vikid) references rishi (rishiid))

insert into vikrant values (55,'vicky','nagpur')
insert into rishi values ('jaggu','rishikesh','Uk')
select*from rishi
insert into vikrant values (55,'vicky','nagpur')
insert into vikrant values (1,'vicky','nagpur')
select*from vikrant
