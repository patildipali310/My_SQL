select * from customers;    # customers Original table with all the values 

select count(*) from customers;    # rows count = 122 rows

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

# Auto_increment   # Used to generate auto serial numbers
create table Stud(
Roll_No int primary key auto_increment,
Name Varchar(288),
Age int
);

insert into Stud values(null, "A", 15);
insert into Stud(Name, Age) values("B",19);
select * from Stud;