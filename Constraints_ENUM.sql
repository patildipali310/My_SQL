Create table Employee_3(
Emp_ID int not null default 0,
Emp_Name varchar(100),
Age int check(Age>20),
Gender ENUM("Male", "Female")
);

select * from Employee_3;

insert into Employee_3
values(1,"Rahul",25,"Male");

insert into Employee_3
values(2,"Rahul",25,"femaleee");   # Error = Data Truncated for column Gender

insert into Employee_3
values(13,"Dhiraj",27,"male");