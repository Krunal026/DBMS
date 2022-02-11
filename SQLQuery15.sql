CREATE TABLE Student (      
      id int PRIMARY KEY IDENTITY,     
      admission_no varchar(45) NOT NULL,  
      first_name varchar(45) NOT NULL,      
      last_name varchar(45) NOT NULL,  
      age int,  
      city varchar(25) NOT NULL      
    );    

CREATE TABLE Fee (   
      admission_no varchar(45) NOT NULL,  
      course varchar(45) NOT NULL,      
      amount_paid int,    
    ); 
	
INSERT INTO Student (admission_no, first_name, last_name, age, city)       
    VALUES (3354,'Luisa', 'Evans', 13, 'Texas'),       
    (2135, 'Paul', 'Ward', 15, 'Alaska'),       
    (4321, 'Peter', 'Bennett', 14, 'California'),    
    (4213,'Carlos', 'Patterson', 17, 'New York'),       
    (5112, 'Rose', 'Huges', 16, 'Florida'),  
    (6113, 'Marielia', 'Simmons', 15, 'Arizona'),    
    (7555,'Antonio', 'Butler', 14, 'New York'),       
    (8345, 'Diego', 'Cox', 13, 'California');  
select*from student

INSERT INTO Fee (admission_no, course, amount_paid)       
    VALUES (3354,'Java', 20000),       
    (7555, 'Android', 22000),       
    (4321, 'Python', 18000),    
    (8345,'SQL', 15000),       
    (5112, 'Machine Learning', 30000); 
select*from Fee

select Student.admission_no, Student.first_name, Student.last_name,Fee.amount_paid,Fee.course
from Student inner join Fee on Student.admission_no=Fee.admission_no

select Student.admission_no, Student.first_name, Student.last_name, 
Fee.course, Fee.amount_paid from Student 
left join Fee on Student.admission_no=Fee.admission_no

select Student.admission_no, Student.first_name, Student.last_name, 
Fee.course, Fee.amount_paid from Student 
right join Fee on Student.admission_no=Fee.admission_no

select Student.admission_no, Student.first_name, Student.last_name, 
Fee.course, Fee.amount_paid from Student 
full join Fee on Student.admission_no=Fee.admission_no


SELECT S1.first_name, S2.last_name, S2.city  
    FROM Student S1, Student S2  
    WHERE S1.id <> S2.iD AND S1.city = S2.city  
    ORDER BY S2.city;  

	SELECT Student.first_name, Student.last_name, Fee.course,Fee.amount_paid 
    FROM Student  
   cross join Fee 

   select*from Fee
