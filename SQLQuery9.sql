create table department(dept_id int identity primary key, dept_name varchar(50))
create table employee (emp_id int primary key,emp_name varchar(50),dept_id int, constraint e1
foreign key (dept_id) references department (dept_id))

insert into department values('krunal')
drop table employee
drop table department


create table department(dept_id int identity primary key, dept_name varchar(50))
create table employee (emp_id int primary key,emp_name varchar(50),dept_id int, constraint e2
foreign key (dept_id) references department (dept_id))
insert into employee value('krunal',1)
insert into department values ('vivek')
select*from employee
select*from department
insert into employee values('ravi',2)
insert into department values ('kishor')
select*from department
insert into employee values('megha',3)
insert into department values ('rekha')
select*from department
insert into employee values('ramesh',4)
insert into department values ('kriti')

insert into employee values('abc',4)


drop table employee
drop table department

create table department(dept_id int identity primary key, dept_name varchar(50))
create table employee (emp_id int primary key,emp_name varchar(50),dept_id int, constraint e2
foreign key (dept_id) references department (dept_id))

insert into employee values('krunal',1)
insert into department values ('vivek')
select * from department
insert into employee values('krunal',2)
insert into department values ('reva')
select * from department
select * from employee
insert into department values('purchase')
insert into employee values('amit',3)
insert into employee (emp_id, emp_name) values (3,'pawan')
select*from employee
insert into department values('zendu')
select*from department
insert into employee (emp_id, emp_name) values (4,'rose')
select*from employee
insert into department values('gulab')
select*from department
insert into employee (emp_id, emp_name,dept_id) values (5,'rose', 5)
insert into department values('sunflower')
select*from department
insert into employee (emp_id, emp_name,dept_id) values (7,'rose', 6)
select*from employee
insert into department values('ketan')
select*from department
insert into employee (emp_id, emp_name,dept_id) values (15,'rose', 7)

drop table employee
drop table department

create table department(dept_id int identity primary key, dept_name varchar(50))
create table employee (emp_id int primary key,emp_name varchar(50),dept_id int, constraint e2
foreign key (dept_id) references department (dept_id))

insert into department values ('krunal')
select*from department
insert into employee (emp_id, emp_name, dept_id) values (1,'vivek',1)
select*from employee
insert into department values ('ravina')
select*from department
insert into employee (emp_id, emp_name, dept_id) values (2,'kiran',2)
select*from employee
insert into department values ('piyush')
select*from department
insert into employee (emp_id, emp_name, dept_id) values (3,'rahul',3)
select*from employee