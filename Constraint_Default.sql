Create table Employee_1(
Emp_ID int default 100,
Emp_Name varchar(100),
Age int);

select * from Employee_1;

insert into Employee_1
values(101,"A",20);

insert into Employee_1    # Not giving output because one variable is missing
values("B",26);

insert into Employee_1(Emp_Name, Age)   # since giving output because inserting values using name so takes value of non given varable is default 100
values("B",26);