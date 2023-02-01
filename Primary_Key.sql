create table employee(
emp_id int primary key,   # Parennt Class
name varchar(288),
age int
);

insert into employee
values(1,"Dipali",26),
	  (2,"Shubham",20),
      (3,"Raju",15),
      (4,"Vinay",32),
      (5,"Swati",40);
      
select * from employee;