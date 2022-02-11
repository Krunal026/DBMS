create table salesman (salesman_id int , name varchar (20), 
city varchar(20), commission dec(10,2))

select*from salesman
insert into salesman values (5001,'james hoog','new york',0.15)
insert into salesman values (5002,'Nail Knite','Paris',0.13)
insert into salesman values (5005,'Pit Alex','London',0.11)
insert into salesman values (5006,'Mc Lyon','Paris',0.14)
insert into salesman values (5007,'Paul Adam','Roam',0.13)
insert into salesman values (5003,'Lauson Hen ','San Jose',0.12)
select*from salesman

select  name, commission from salesman


create table orders (ord_no int,purch_amt dec(10,2), 
ord_date date, coustomer_id int, salesman_id int)

insert into orders values (70001,105.5,'2012-10-05',3005,5002)
insert into orders values (70009,270.65,'2012-09-10',3001,5005)
insert into orders values (70001,65.26,'2012-10-05',3002,5001)
insert into orders values (70004,110.5,'2012-08-17',3009,5003)
insert into orders values (70007,948.5,'2012-09-10',3005,5002)
insert into orders values (70005,2400.6,'2012-07-27',3007,5001)
insert into orders values (70008,5760,'2012-09-10',3002,5001)
select*from orders
select ord_date,salesman_id,ord_no,purch_amt from orders

select distinct salesman_id
from orders;




select*from salesman
select name, city from salesman where city='paris'



create table coustomer (cust_id int, cust_name varchar(20),
city varchar(20), grade int,salesman_id int)
insert into coustomer values(3002,'Nick Rimando','New York',100,5001)
insert into coustomer values(3007,'Brad Davis','New York',200,5001)
insert into coustomer values(3005,'Graham Zusi','California ',200,5002)
insert into coustomer values(3008,' Julian Green','London',300,5002)
insert into coustomer values(3004,'Fabian Johnson ','Paris',300,5006)
insert into coustomer values(3009,'Geoff Cameron','Berlin',100,5003)
insert into coustomer values(3003,'Jozy Altidor','Moscow',200,5007)
select*from coustomer

select cust_id,cust_name,city,grade,salesman_id from coustomer where grade=200

select*from orders
select ord_no, ord_date, purch_amt from orders where salesman_id=5001


create table nobal (year int, subject varchar(20), winner varchar (50),
country varchar(20), category varchar(20))
insert into nobal values (1970,'physics','hannes alfven', 'sweeden', 'scientist')
insert into nobal values (1970,'physics','Louis Neel', 'France', 'scientist')
insert into nobal values (1970,'Chemistry','Luis Federico Leloir','france', 'scientist')
insert into nobal values (1970,'physiology','Ulf von Euler', 'sweeden', 'scientist')
insert into nobal values (1970,'physics','Bernard Katz', 'Germany', 'scientist')
insert into nobal values (1970,'Literature','Aleksandr Solzhenitsyn', 'Russia', 'scientist')
insert into nobal values (1970,'Economics','Paul Samuelson', 'USA', 'scientist')

select *from nobal
select year,subject,winner from nobal where year=1970

drop table  nobal

create table nobal (year int, subject varchar(20), winner varchar (50),
country varchar(20), category varchar(20))
insert into nobal values (1971,'physics','hannes alfven', 'sweeden', 'scientist')
insert into nobal values (1977,'physics','Louis Neel', 'France', 'scientist')
insert into nobal values (1972,'Chemistry','Luis Federico Leloir','france', 'scientist')
insert into nobal values (1971,'physiology','Ulf von Euler', 'sweeden', 'scientist')
insert into nobal values (1974,'physics','Bernard Katz', 'Germany', 'scientist')
insert into nobal values (1979,'Literature','Aleksandr Solzhenitsyn', 'Russia', 'scientist')
insert into nobal values (1972,'Economics','Paul Samuelson', 'USA', 'scientist')	

select *from nobal
select winner from nobal where year=1971

drop table nobal

create table nobal (year int, subject varchar(20), winner varchar (50),
country varchar(20), category varchar(20))
insert into nobal values (1971,'physics','hannes alfven', 'sweeden', 'scientist')
insert into nobal values (1977,'physics','Louis Neel', 'France', 'scientist')
insert into nobal values (1972,'Chemistry','Luis Federico Leloir','france', 'scientist')
insert into nobal values (1971,'physiology','Ulf von Euler', 'sweeden', 'scientist')
insert into nobal values (1974,'physics','Bernard Katz', 'Germany', 'scientist')
insert into nobal values (1979,'Literature','Aleksandr Solzhenitsyn', 'Russia', 'scientist')
insert into nobal values (1972,'Economics','Dennis Gabor', 'USA', 'scientist')

select*from nobal
select year, subject from nobal where winner='Dennis Gabor'

drop table nobal

create table nobal (year int, subject varchar(20), winner varchar (50),
country varchar(20), category varchar(20))
insert into nobal values (1936,'physics','hannes alfven', 'sweeden', 'scientist')
insert into nobal values (1977,'physics','Louis Neel', 'France', 'scientist')
insert into nobal values (1941,'Chemistry','Luis Federico Leloir','france', 'scientist')
insert into nobal values (1965,'physiology','Ulf von Euler', 'sweeden', 'scientist')
insert into nobal values (1986,'physics','Bernard Katz', 'Germany', 'scientist')
insert into nobal values (1966,'Literature','Aleksandr Solzhenitsyn', 'Russia', 'scientist')
insert into nobal values (1949,'Economics','Dennis Gabor', 'USA', 'scientist')
select*from nobal
select	winner from nobal where subject='physics' and year>1950

drop table nobal


create table nobal (year int, subject varchar(20), winner varchar (50),
country varchar(20), category varchar(20))
insert into nobal values (1936,'physics','hannes alfven', 'sweeden', 'scientist')
insert into nobal values (1977,'physics','Louis Neel', 'France', 'scientist')
insert into nobal values (1967,'Chemistry','Luis Federico Leloir','france', 'scientist')
insert into nobal values (1965,'physiology','Ulf von Euler', 'sweeden', 'scientist')
insert into nobal values (1986,'physics','Bernard Katz', 'Germany', 'scientist')
insert into nobal values (1972,'Chemistry','Aleksandr Solzhenitsyn', 'Russia', 'scientist')
insert into nobal values (1949,'Economics','Dennis Gabor', 'USA', 'scientist')
select*from nobal
select year,subject, winner,country from nobal where 
subject='Chemistry' AND year>=1965 AND year<=1975;

drop table nobal


create table nobal (year int, subject varchar(20), winner varchar (50),
country varchar(20), category varchar(20))
insert into nobal values (1936,'physics','hannes alfven', 'sweeden', 'scientist')
insert into nobal values (1977,'physics','Louis Neel', 'France', 'scientist')
insert into nobal values (1967,'Chemistry','Luis Federico Leloir','france', 'scientist')
insert into nobal values (1965,'physiology','Ulf von Euler', 'sweeden', 'scientist')
insert into nobal values (1986,'physics','Bernard Katz', 'Germany', 'scientist')
insert into nobal values (1972,'Chemistry','Aleksandr Solzhenitsyn', 'Russia', 'scientist')
insert into nobal values (1949,'Economics','Dennis Gabor', 'USA', 'scientist')
select*from nobal
select year, subject, winner, country, category from nobal where winner like 'Louis %'

drop table nobal

create table nobal (year int, subject varchar(20), winner varchar (50),
country varchar(20), category varchar(20))
insert into nobal values (1970,'physics','hannes alfven', 'sweeden', 'scientist')
insert into nobal values (1970,'physics','Louis Neel', 'France', 'scientist')
insert into nobal values (1967,'Chemistry','Luis Federico Leloir','france', 'scientist')
insert into nobal values (1970,'physiology','Ulf von Euler', 'sweeden', 'scientist')
insert into nobal values (1986,'physics','Bernard Katz', 'Germany', 'scientist')
insert into nobal values (1970,'Chemistry','Aleksandr Solzhenitsyn', 'Russia', 'scientist')
insert into nobal values (1970,'Economics','Dennis Gabor', 'USA', 'scientist')
select*from nobal

select year, subject, winner, country, category from nobal
where year = 1970 and subject != 'physiology' and subject != 'Economics'

drop table nobal
create table nobal (year int, subject varchar(20), winner varchar (50),
country varchar(20), category varchar(20))
insert into nobal values (1970,'physics','hannes alfven', 'sweeden', 'scientist')
insert into nobal values (1970,'physics','Louis Neel', 'France', 'scientist')
insert into nobal values (1967,'Chemistry','Luis Federico Leloir','france', 'scientist')
insert into nobal values (1970,'physiology','Ulf von Euler', 'sweeden', 'scientist')
insert into nobal values (1986,'physics','Bernard Katz', 'Germany', 'scientist')
insert into nobal values (1970,'Chemistry','Aleksandr Solzhenitsyn', 'Russia', 'scientist')
insert into nobal values (1970,'Economics','Johannes Georg Bednorz', 'USA', 'scientist')
select*from nobal
select year, subject, winner, country, category from nobal
winner='Johannes Georg Bednorz'

drop table nobal



create table nobal (year int, subject varchar(20), winner varchar (50),
country varchar(20), category varchar(20))
insert into nobal values (1970,'physics','hannes alfven', 'sweeden', 'scientist')
insert into nobal values (1970,'physics','Louis Neel', 'France', 'scientist')
insert into nobal values (1967,'Chemistry','Luis Federico Leloir','france', 'scientist')
insert into nobal values (1970,'physiology','Ulf von Euler', 'sweeden', 'scientist')
insert into nobal values (1986,'physics','Bernard Katz', 'Germany', 'scientist')
insert into nobal values (1970,'Chemistry','Aleksandr Solzhenitsyn', 'Russia', 'scientist')
insert into nobal values (1970,'Economics','Johannes Georg Bednorz', 'USA', 'scientist')
select*from nobal
 select * from nobal where  subject not like 'p%' order by year desc


 select * from nobal
 drop table nobal




 create table nobal (year int, subject varchar(20), winner varchar (50),
country varchar(20), category varchar(20))
insert into nobal values (1970,'physics','hannes alfven', 'sweeden', 'scientist')
insert into nobal values (1979,'physics','Menachem Begin', 'sweeden', 'prime minister')
insert into nobal values (1986,'physics','Yitzhak Rabin', 'sweeden', 'prime minister')
insert into nobal values (1970,'physics','Louis Neel', 'France', 'scientist')
insert into nobal values (1967,'Chemistry','Luis Federico Leloir','france', 'scientist')
insert into nobal values (1970,'physiology','Ulf von Euler', 'sweeden', 'scientist')
insert into nobal values (1986,'physics','Bernard Katz', 'Germany', 'scientist')
insert into nobal values (1970,'Chemistry','Aleksandr Solzhenitsyn', 'Russia', 'scientist')
insert into nobal values (1970,'Economics','Johannes Georg Bednorz', 'USA', 'scientist')
select*from nobal
select*from nobal where year>1972 and winner in('menachem Begin','Yitzhak Rabin')