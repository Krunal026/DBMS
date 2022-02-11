create table vendor_groups 
( group_id int identity primary key,
group_name varchar(50) not null);

create table vendors
( vendor_id int identity primary key,
vendor_name varchar(50) not null,
group_id int not null);


select *from vendor_groups
insert into vendors (vendor_name,group_id) values ('krunal',123)
select*from vendors

drop table vendors

CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT NOT NULL,
        CONSTRAINT fk_groups FOREIGN KEY (group_id) 
        REFERENCES vendor_groups(group_id)
);

select*from vendor_groups

insert into vendors(vendor_name,group_id)values('krunal',123)
insert into vendor_groups values('vivek')
select * from vendor_groups
insert into vendors(vendor_name,group_id)values('krunal',1)
select*from vendors
insert into vendors(vendor_name,group_id)values('reva',2)
insert into vendor_groups values('adi')
select * from vendor_groups
insert into vendors(vendor_name,group_id)values('reva',2)
select*from vendors
insert into vendors(vendor_name,group_id)values('virat',2)
select*from vendors
insert into vendors(vendor_name,group_id)values('sachin',3)
insert into vendor_groups values('anushka')
select * from vendor_groups
insert into vendors(vendor_name,group_id)values('sachin',3)
select*from vendors

select*from vendor_groups
delete from vendor_groups where group_id=2
insert into vendor_groups values ('vamika')
select * from vendor_groups
delete from vendor_groups where group_id=4
select * from vendor_groups

update vendor_groups set group_name='kriti' where group_id=1
select * from vendor_groups

drop table vendors
CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT NOT NULL,
        CONSTRAINT fk_groups FOREIGN KEY (group_id) 
        REFERENCES vendor_groups(group_id)
);
drop table vendors

CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT NOT NULL,
        CONSTRAINT fk1 FOREIGN KEY (group_id) 
        REFERENCES vendor_groups(group_id)
		on delete no action
);

select * from vendors
insert into vendors values ('amit', 1)
delete from vendor_groups where group_id=1

drop table vendors

CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT NOT NULL,
        CONSTRAINT fk2 FOREIGN KEY (group_id) 
        REFERENCES vendor_groups(group_id)
		on delete cascade
);


insert into vendors values ('amit', 1)
select * from vendor_groups
select * from vendors
delete from vendor_groups where group_id=1
select * from vendor_groups
select * from vendors

drop table vendors

CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT,
        CONSTRAINT fk3 FOREIGN KEY (group_id) 
        REFERENCES vendor_groups(group_id)
		on delete set null
);

insert into vendors values ('srk',2 )
delete from vendor_groups where group_id=2
select*from vendor_groups
select*from vendors

drop table vendors

CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT,
        CONSTRAINT fk4 FOREIGN KEY (group_id) 
        REFERENCES vendor_groups(group_id)
		on update no action
);

insert into vendor_groups values ('salman')
select * from vendor_groups
select*from vendors
insert into vendors values ('rekha',3)
select*from vendors
select*from vendor_groups
update  vendor_groups set group_id=6 where group_id=5