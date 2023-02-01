create table Employee(  # Create a table
Emp_ID int not null,
Emp_Name varchar(100) not null,
Age int);   

select * from Employee; #used to select/print all the info in the created columns

insert into Employee    # Used to insert the information in table
values(101,"A",20);

insert into Employee
values(null,"B",25);

insert into Employee
values(102,null,25);

insert into Employee(Age,Emp_Name)
values(30,"F");