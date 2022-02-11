create table customer5 (custin int , custname varchar(50), telno varchar(50))
create table orders1 (orderid int, orderdate date, custid int, 
prodname varchar(50), qty int, rate int) 

insert into customer values (1234,'krunal','7219713843')
insert into customer values (6789,'Vivek','5874369874')
insert into customer values (4567,'Ravina','1234567890')
insert into customer values (1234,'Piyush','0987654321')
insert into customer values (1234,'Vishal','7485961425')
insert into customer values (1234,'kiran','5429765392')
insert into customer values (1234,'ram','7639462876')
select*from customer
drop table customer
insert into customer5 values (1234,'krunal','7219713843')
insert into customer5 values (6789,'Vivek','5874369874')
insert into customer5 values (4567,'Ravina','1234567890')
insert into customer5 values (3649,'Piyush','0987654321')
insert into customer5 values (5218,'Vishal','7485961425')
insert into customer5 values (3624,'kiran','5429765392')
insert into customer5 values (6426,'ram','7639462876')
select*from customer5

insert into orders1 values (111,'2022-12-07',4567,'ball',5,70)
insert into orders1 values (222,'2022-07-07',7624,'bat',5,70)
insert into orders1 values (333,'2022-09-04',3649,'stump',5,70)
insert into orders1 values (444,'2022-12-27',6426,'keyboard',5,70)
insert into orders1 values (555,'2022-04-26',0249,'cpu',5,70)
insert into orders1 values (666,'2022-08-17',9874,'speaker',5,70)
insert into orders1 values (777,'2022-01-07',5218,'mouse',5,70)
insert into orders1 values (888,'2022-11-07',4632,'ram',5,70)

select*from orders1

select customer5.custin, customer5.custname, customer5.telno, orders1.prodname,
orders1.orderdate, orders1.qty, orders1.rate from customer5 inner join orders1 
on customer5.custin=orders1.custid

select customer5.custin, customer5.custname, customer5.telno, orders1.prodname,
orders1.orderdate, orders1.qty, orders1.rate from customer5 left join orders1 
on customer5.custin=orders1.custid


select customer5.custin, customer5.custname, customer5.telno, orders1.prodname,
orders1.orderdate, orders1.qty, orders1.rate from customer5 right join orders1 
on customer5.custin=orders1.custid

select customer5.custin, customer5.custname, customer5.telno, orders1.prodname,
orders1.orderdate, orders1.qty, orders1.rate from customer5 full join orders1 
on customer5.custin=orders1.custid