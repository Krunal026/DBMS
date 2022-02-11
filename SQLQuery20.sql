CREATE TABle STUDENT2(  
        id nchar(10),  
        name nchar(10),  
        age nchar(10),  
        salary nchar(10)  
    );  
	INSERT INTO STUDENT2 
               (ID,NAME,AGE,SALARY)    
         VALUES    
               (1, 'John', 27, 20000),     
               (2, 'Harris', 29, 28000),    
               (3, 'peter', 17, 25000),  
               (4, 'Marco', 29, 28000),    
               (5, 'Diego', 17, 35000),  
               (6, 'Antonio', 22, 48000),    
               (7, 'Steffen', 16, 35000);  

	select*from STUDENT2

	select*from STUDENT2 where age>15

	create index index_age on student2(age)

	select*from STUDENT2 where age>15

