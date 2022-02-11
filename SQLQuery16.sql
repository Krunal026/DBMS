drop table product
create table product ( prodid int , prodname varchar(50), price int , qty int)
select * from product
insert into product values (1,'mouse',150,5)
insert into product values (2,'keyboard',500,3)
insert into product values (3,'mouse',150,2)
insert into product values (5,'speaker',1000,1)
insert into product values (6,'keyboard',550,2)
insert into product values (7,'cpu',1500,1)
insert into product values (8,'monitor',1000,2)
insert into product values (9,'ups',1500,2)
select*from product

select prodname, min(price) as 'minimum price' from product
group by prodname
having min(qty)>=2

select prodname, max(price) as 'maximum price' from product
group by prodname
having max(qty)>=2

select prodname, avg(price) as 'average price' from product
group by prodname 
where prodname='mouse'

select*from product

select prodname, sum(price) as 'sum price' from product
group by prodname 

select prodname, count(price) as 'sum price' from product
group by prodname 

select*from coustomer

create table customer2 ( custid int, custname varchar(50),
state varchar(50), city varchar(50))
insert into customer2 values (1, 'krunal','mah','nagpur')
insert into customer2 values (2, 'vivek','mah','nagpur')
insert into customer2 values (3, 'adi','mp','bhopal')
insert into customer2 values (4, 'virat','mp','bhopal')
insert into customer2 values (5, 'rekha','mp','indore')
select*from customer2


create table orders2 (orderid int , custid int, orderdate date,
productname varchar(20),qty int)
insert into orders2 values(1,1,'2022-2-2','mouse',5)
insert into orders2 values(1,1,'2022-2-2','keyboard',5)
insert into orders2 values(2,2,'2022-2-2','desktop',5)
insert into orders2 values(2,2,'2022-2-2','ram',5)
insert into orders2 values(3,3,'2022-2-2','laptop',5)
insert into orders2 values(4,3,'2022-1-2','mouse',5)
insert into orders2 values(5,4,'2022-2-2','mouse',5)
insert into orders2 values(6,4,'2022-2-2','ram',5)
insert into orders2 values(7,5,'2022-2-2','desktop',5)
insert into orders2 values(7,5,'2022-2-2','ram',5)
select * from orders2

select orderid, custid, orderdate, productname, qty  from orders2
where custid in ( select custid from customer2 where city = 'bhopal')


