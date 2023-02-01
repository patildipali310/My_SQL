Create table Employee_2(
Emp_ID int default 0,
Emp_Name varchar(100),
Age int check(Age>20)
);

select * from Employee_2;

insert into Employee_2
values(101,"A",23);

insert into Employee_2      # Error =  Columns count doesn't match value count at  row 1
values("B",26);

insert into Employee_2(Emp_Name, Age)    # Output shown
values("B",26);

DROP table Employee_2