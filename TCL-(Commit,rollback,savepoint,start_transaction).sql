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



# Sub-Query  : Nested query or Query within a query.  

select * from customers     # Output same as inner join
where customernumber in (select customerNumber from orders);

select ordernumber, quantityordered from orderdetails
where quantityOrdered > (select AVG(quantityOrdered) from orderdetails)
order by quantityOrdered;

select ordernumber, quantityordered from orderdetails
where quantityOrdered = (select MAX(quantityOrdered) from orderdetails);

# Que : Show all those customers who have not placed any order
select customernumber, customername from customers 
where customerNumber not in (select customerNumber from orders);

# Type of Query :
# Correlated Sub-Query : Outer query run first and then inner query runs. it's applocable only on one/single table itself.

select productname, productline, buyprice from products T1
where buyPrice > (select AVG (buyPrice) from products T2
                 where T1.productLine = T2.productLine)
order by productline, buyPrice desc;

select avg(buyprice) from products where productline = 'Motorcycles';

# ERROR IN CODE
-- select  productline,buyprice, count(productname) as total_products from products T1
-- where buyPrice > (select AVG (buyPrice) from products T2
--                  where T1.productLine = T2.productLine)
-- group by productLine
-- order by productline, buyPrice desc;