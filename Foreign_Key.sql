create table department(
dept_id int primary key,  
dept_name varchar(288), 
e_id int,
foreign key(e_id) references employee(emp_id)   # Child class : subset of primary key
on delete cascade   # Used to delete record
on update cascade   # used to update records
);

insert into department
values(101,"HR",5), (102,"Marketing",3), (103,"Finance",1);
select * from department