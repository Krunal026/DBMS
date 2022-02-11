select min(coustomer_id) as ' minimun cust id'  from orders
group by ord_no
select*from orders


    SELECT purch_amt, ord_date, salesman_id , coustomer_id 
    FROM orders 
    WHERE coustomer_id = (  
    SELECT MIN(coustomer_id) AS "Minimum id"   
    FROM orders);  

	select * from products
	drop table products
	cre

