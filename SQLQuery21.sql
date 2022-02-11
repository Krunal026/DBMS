create function f1()
returns table
as 
return (select*from product)

select*from f1()

select*from emp2
insert into emp2 values(1,123,'krunal','nagpur')
insert into emp2 values(2,222,'vivek','mumbai')
insert into emp2 values(3,333,'aditya','pune')

create function emp4
(@empcontact varchar(50),
@empname varchar(50),
@empcity varchar(50)
)
returns varchar(150)
as
begin return (select @empcontact+''+@empname+''+@empcity)
end

select dbo.emp4 (empcontact, empname, empcity) as 'detail' from emp2
