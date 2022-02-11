create table products 
( prodid int identity primary key,
prodname varchar(255) not null,
unitprice dec(10,2) check (unitprice>0))

insert into products values ('keyboard',540)
insert into products values ('keyboard',0)
select*from products

create table products1 
( prodid int identity primary key,
prodname varchar(255) not null,
unitprice dec(10,2) constraint pp check (unitprice>0))
insert into products1 values ('mouse',250)
select*from products1
insert into products1 values ('mouse',0)
select*from products1

insert into products1(prodname,unitprice)values('CPU',3427)
select*from products1

insert into products1(prodname,unitprice)values('KTM', null)
select*from products1

create table productds2 (prodid int identity primary key,
productname varchar(255) not null,
unitprice dec(10,2) check (unitprice>0),
discprice dec(10,2) check (discprice>0),
check ( discprice<unitprice))

insert into productds2 values('mouse',500,20)
insert into productds2 values('mouse',0,20)
insert into productds2 values('mouse',50,200)
select*from productds2


create table products3 (prodid int identity primary key,
productname varchar(255) not null,
unitprice dec(10,2),
discprice dec(10,2),
check (unitprice>0),
check ( discprice>0 and discprice>unitprice))

insert into products3 values ('speaker',200,250)
select*from products3

create table products4 (prodid int identity primary key,
productname varchar(255) not null,
unitprice dec(10,2),
discprice dec(10,2),
check (unitprice>0),
constraint kpj
check ( discprice>0 and discprice>unitprice))

insert into products4 values ('speaker',200,250)
insert into products4 values ('speaker',200,150)
select*from products4

create table products5 (prodid int identity primary key,
productname varchar(255) not null,
unitprice dec(10,2),
discprice dec(10,2),
check (unitprice>0),
check ( discprice>0 and discprice>unitprice))

drop table products5

create table products5 (prodid int identity primary key,
productname varchar(255) not null,
unitprice dec(10,2),
discprice dec(10,2),
)

alter table products5
add constraint abc check (unitprice>0)
alter table products5 nocheck constraint abc
exec sp_help products5


insert into products5 values ('krunal',25,0)
insert into products5 values ('krunal',0,25)

exec sp_help products5

create table persons(personid int identity primary key,
firstname varchar(50) not null,
lastname varchar(50) not null,
email varchar(50) unique)
insert into persons values ('krunal','jibhkate','kpj@gmail.com')
select*from persons
insert into persons values ('vivek','jibhkate','kpj@gmail.com')

drop table persons
create table persons(personid int identity primary key,
firstname varchar(50) not null,
lastname varchar(50) not null,
email varchar(50) 
unique (email))
insert into persons values ('krunal','jibhkate','kpj@gmail.com')
select*from persons
insert into persons values ('vivek','jibhkate','kpj@gmail.com')

create table persons1(personid int identity primary key,
firstname varchar(50) not null,
lastname varchar(50) not null,
email varchar(50) 
constraint kru
unique (email))
insert into persons1 values ('krunal','jibhkate','kpj@gmail.com')
select*from persons1
insert into persons values ('vivek','jibhkate','kpj@gmail.com')