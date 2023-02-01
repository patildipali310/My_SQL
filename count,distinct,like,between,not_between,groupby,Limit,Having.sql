select * from customers;    # customers Original table with all the values 

select count(*) from customers;    # rows count = 122 rows

# Where   : Act as a filter
select customerName, customernumber,country from customers where country = "Australia";   # filter and give result country = australia
select customername, customernumber, country from customers where country<>"Australia";

# In /Not In  # present or not in multiple selected columns
select customerName, customernumber,country from customers where country in ("Australia", "France","UK");
select customerName, customernumber,country from customers where country not in ("Australia", "France","UK");

# Not  # Intersection of two or more columns
select customername, country, creditlimit from customers where country="USA" and creditlimit>1000;

# OrderBy : Sorting ascending / descending  # Used for sroting the data
select customerName, customernumber,country from customers where country not in ("Australia", "France","UK") order by country;
select customerName, customernumber,country from customers where country not in ("Australia", "France","UK") order by country desc;

# Aggregate Functions (SUM,AGV,MIN,MAX,COUNT)
select sum(quantityordered) as total_QTY from orderdetails;
select avg(quantityordered) as AVG_QTY from orderdetails;
select min(quantityordered) as Min_QTY from orderdetails;
select max(quantityordered) as Max_QTY from orderdetails;
select COUNT(*)  As total_Rows from orderdetails;

#is null / is not null
select count(*) from customers where state is null;     # 73 rows having null values
select count(*) from customers where state is not null;    # 49 rows 

# Distinct  :- (Unique)
select distinct state from customers;    # Unique state  # include additional 1 row as null
select count(distinct state)-1 as unique_state from customers;     # 17 rows # as used to create and stored information in new column

# Like :- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column. The percent sign (%) represents zero, one, or multiple characters
select distinct(country) from customers where country like "S%";  # Countries name start with S are shown. Finds any values that start with "a".
select distinct(country) from customers where country like"%e";   # Countries name ends with e are shown. Finds any values that end with "e".
select distinct(country) from customers where country like"%or%";   #Finds any values that have "or" in any position

# Betweem / Not Between



# GroupBy
select ordernumber, sum(quantityordered) as total_QTY 
from orderdetails 
group by ordernumber 
order by total_QTY; 

select ordernumber, sum(quantityordered) as total_QTY 
from orderdetails 
group by ordernumber 
order by total_QTY limit 5;  # Lowest 5 values for ighest use decs only

select ordernumber, sum(quantityordered) as total_QTY 
from orderdetails 
group by ordernumber 
order by total_QTY desc 
limit 2,3;  # 3 for 3 rows/ values #2+3=5 : (2,1)(2,2),(2,3) # 3,4,5 highest value

select ordernumber, sum(quantityordered) as total_QTY from orderdetails group by ordernumber order by total_QTY limit 1,1;  # 2nd lowest values

select ordernumber, sum(quantityordered) as total_QTY 
from orderdetails 
group by ordernumber 
order by total_QTY
limit 1,3; # (1,1),(1,2),(1,3)

# Having   # having is act as filter on aggregation funtions 
select ordernumber, sum(quantityordered) as total_QTY 
from orderdetails 
group by ordernumber 
having total_QTY>=650
order by total_QTY;  # records greater than 650

select ordernumber, sum(quantityordered) as total_QTY 
from orderdetails 
group by ordernumber 
having total_QTY between 100 and 200   # records in between 100 and 200
order by total_QTY; 

select ordernumber, max(quantityordered) as max_qty
from orderdetails
group by ordernumber;

select ordernumber, max(quantityordered) as max_qty
from orderdetails
group by ordernumber
order by max_qty desc;

select max(quantityordered) from orderdetails;  # max quantity shown
select min(quantityordered) from orderdetails;  # min quantity shown
select (quantityordered) from orderdetails limit 3;  # first 3 entries are shown

# Case
select orderNumber, quantityOrdered,
case 
when quantityOrdered<=35 then "Poor"    # if condition then result
when quantityOrdered between 35 and 75 then "Average"
else "High"
end as Result
from Orderdetails
order by Result;
select * from Orderdetails;

select ordernumber, quantityordered,
case
when quantityordered<=35 then "Poor"
when quantityordered between 36 and 75 then "Average"
else "high"
end as R from orderdetails order by R;

# Auto_increment   # Used to generate auto serial numbers
create table Stud(
Roll_No int primary key auto_increment,
Name Varchar(288),
Age int
);
insert into Stud values(null, "A", 15);
insert into Stud(Name, Age) values("B",19);
# insert into Stud values("C",25);  # Error
insert into Stud values(null,"D",27);
select * from Stud;

