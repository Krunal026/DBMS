create table vendor_groups
(groupid int identity primary key,
groupname varchar(100) not null);

create table mentors 
( mentorid int identity primary key,
mentorname varchar(100) not null,
groupid int not null,);

select * from vendor_groups
insert into mentors(mentorname,groupid)values ('Krunal',123)
select*from mentors

drop table mentors

create table mentors 
( mentorid int identity primary key,
mentorname varchar(100) not null,
groupid int not null,
constraint krunal foreign key (groupid)
references vendor_groups(groupid)
);

select*from mentors
select*from vendor_groups

insert into mentors(mentorname,mentorid)values ('amit',26)
insert into vendor_groups values ('Vivek')

select * from vendor_groups
insert into mentors(mentorname,mentorid)values ('amit',1)
select * from mentors