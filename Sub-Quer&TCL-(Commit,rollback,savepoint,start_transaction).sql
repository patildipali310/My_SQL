drop table if exists employee;

create table employee(Emp_ID int primary key, emp_name varchar(288), age int);   # With Auto-commit

start transaction;

insert into employee values
(1,'Kedar',28),(2,'Ritu',25),(3,'Manoj',30);
savepoint insert_emp;                       # Without auto-commit

update employee set age = 40 where emp_id=3;
savepoint update_emp;                       # Without auto-commit


delete from employee where emp_id = 2;
savepoint delete_emp;                       # Without auto-commit


rollback;  # every operations should Undo #all the transaction without savepoint query
rollback to update_emp;   # Undo till update_emp query with savepoint we use rollback to (savepoint_name)
rollback to insert_emp;   # we get original table 3 without autommit upper transaction Undo till insert_emp query , only sequence undo single entry can't undo.-co



select * from classicmodels.employee;   # Created table
