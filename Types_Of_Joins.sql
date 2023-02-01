#  Inner Join
select c.customernumber,
c.customername,
sum(od.quantityordered) as total_qty,
avg(od.quantityordered) as avg_qty,
max(od.quantityordered) as max_qty,
min(od.quantityordered) as min_qty

from
customers c  # customers as c

inner join orders o 
on c.customernumber = o.customerNumber  # using customernuber

inner join orderdetails od
on o.ordernumber=od.ordernumber         # Using ordernumber

group by c.customernumber
order by total_qty desc; 

# Left Join

select c.customernumber, c.customername,
count(o.ordernumber) as total_orders
from customers c
left join orders o
using(customernumber)
group by c.customernumber;

# Right Join

select c.customernumber, c.customername,
count(o.ordernumber) as total_orders
from customers c
right join orders o
using(customernumber)
group by c.customernumber;

# Union : left join code + right join code for outer/Union join

select c.customernumber, c.customername,
count(o.ordernumber) as total_orders
from customers c
left join orders o
using(customernumber)
group by c.customernumber;

select c.customernumber, c.customername,
count(o.ordernumber) as total_orders
from customers c
right join orders o
using(customernumber)
group by c.customernumber;

# Cross Join : All the elements are differemt/ unique.

create table laptop(
brand varchar(288));
insert into laptop values("HP"),("Dell");

create table colour(colour_name varchar(288));
insert into colour values("Black"),("White"),("Silver");

select * from laptop cross join colour order by Brand;

# Self Join  : Table join with itself hence called self join

create table students( Roll_no int, Student_name varchar(288), Age int , Teacher_ID int, Teacher_Name varchar(288));
insert into students values(1,'Radha',20,5,'Dipak'),
(2,'Minakshi',22,1,'Suraj'),
(3,'Dinesh',21,3,'Deepa'),
(4,'Rahul',20,2,'Kedar'),
(5,'Shubham',20,10,'ExcelR');

select * from students T1      
inner join students T2
on T1.Roll_no = T2.Teacher_ID;