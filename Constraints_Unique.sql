create table worker(
Emp_id int unique,
Emp_Name varchar(50),
Age int);

select * from worker;

insert into worker
values(1,"Dipali",26);

insert into worker
values(null,"Vipin",25);

insert into worker
values(null,"Divya",28);

insert into worker
values(2, "Payal",15);