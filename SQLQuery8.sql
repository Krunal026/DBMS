create table teacher_detail (teacher_id int primary key,teacher_age
int)
create table teacher_subject(teacher_id int,subject varchar(20),
constraint t1 foreign key(teacher_id) references teacher_detail
(teacher_id))
insert into teacher_subject values(111,'chemistry')
insert into teacher_detail values(111,30)
select*from teacher_detail
insert into teacher_subject values(111,'chemistry')
select*from teacher_subject
drop table teacher_subject
drop table teacher_detail

create table teacher_detail (teacher_id int primary key,teacher_age
int)
create table teacher_subject(teacher_id int,subject varchar(20),
constraint t1 foreign key(teacher_id) references teacher_detail
(teacher_id))
insert into teacher_subject values(111,'chemistry')
insert into teacher_detail values(111,30)
insert into teacher_subject values(111,'chemistry')
select*from teacher_subject
