select*from product


create procedure prod1
as begin 
select*from product
end

exec prod1

alter procedure prod1
as begin 
select prodid, prodname, price from product
order by price
end

exec prod1

create procedure prod2 (@minprice as decimal)
as begin
select*from product 
where price>@minprice
order by price
end

exec prod2 150

create procedure prod3 (@pname as varchar (20))
as begin
select*from product 
where prodname=@pname
order by prodname
end

exec prod3 'mouse'

create procedure prod4 (@pname as varchar (20), @p as decimal)
as begin
select*from product 
where prodname=@pname and price=@p
order by prodname
end

exec prod4 'mouse',150


create proc prod5(@minp as decimal=100,@maxp as decimal=1000,@pn as varchar(max))
as
begin
select * from product
where price > @minp and price < @maxp
and prodname LIKE '%' + @pn + '%'

order by prodname
end;

exec prod5 @minp=120,@maxp=700,@pn='board'
exec prod5 @minp=230,@pn='key'

create proc prod6(@minp as decimal=130,@maxp as decimal=1000,@pn as varchar(max))
as
begin
select * from product
where price > @minp and price < @maxp
and prodname LIKE '%' + @pn + '%'

order by prodname
end;

exec prod6 @minp=120,@maxp=700,@pn='board'
exec prod6 @pn='key'

create proc prod11(@minp as decimal=100,@maxp as decimal=null,@pn as varchar(max))
as
begin
select * from product
where
price >= @minp AND
        (@maxp IS NULL OR price <= @maxp) AND
        prodname LIKE '%' + @pn + '%'
end;

exec prod11 120,200,'mouse'
exec prod11 120,200,'mouse'
exec prod11 @minp=151,@pn='e'

-------------------------------------------------
select*from Student

create procedure s1
as begin 
select*from Student
end

exec s1
-------------------------------------------------------
create procedure s3
as begin 
select*from Student
where city='new york'
end

exec s3

--------------------------------------------------------
create procedure s4
as begin 
select*from Student
where id>2 and id<7
end

exec s4
