create table person_skills ( id int identity primary key,
person_id int, skill_id int, updated_at datetime, unique(person_id,skill_id))

insert into person_skills values (1,2,'2022-12-12')
insert into person_skills values(111,10,'2021-12-12')
insert into person_skills values(111,10,'2021-12-12')
insert into person_skills values(112,10,'2021-12-12')
insert into person_skills values(111,11,'2021-12-12')

create table quotations
( quotation_no int identity primary key,
valid_from date not null, valid_to date not null   )
select*from quotations
alter table  quotations 
add discription varchar(250) not null
exec sp_help quotations
alter table quotations alter column discription varchar(25)



CREATE TABLE t2 (c INT);

INSERT INTO t2
    VALUES
        (1),
        (2),
        (3);
select*from t2

ALTER TABLE t2 ALTER COLUMN c VARCHAR (2);
select * from t2
        insert into t2 values(4)
          insert into t2 values('a')
          select * from t2
		  ALTER TABLE t2 ALTER COLUMN c INT;

          delete from t2 where c = 'a'
           ALTER TABLE t2 ALTER COLUMN c INT;


