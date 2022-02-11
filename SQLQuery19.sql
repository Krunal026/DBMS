    CREATE VIEW [Student_view] AS  
    SELECT id, name, age  
    FROM Student2
    WHERE id > 3;  


	select*from student_view

	select*from product

	create view p1 as
	select prodid, prodname, price, qty from product
	where price>150

		select*from p1

	select*from customer5

	select*from orders1

	create view p3 as select
	customer5.custin, customer5.custname, orders1.orderdate, orders1.rate, orders1.qty
	from customer5 inner join orders1
	on customer5.custin=orders1.custid

	select*from p3

	create view p4 as select
	customer5.custin, customer5.custname, orders1.orderdate, orders1.rate, orders1.qty
	from customer5 inner join orders1
	on customer5.custin=orders1.custid
	where orderid>333

	select*from p4
	


