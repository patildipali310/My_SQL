select * from students;

 # Add Column : alter i.e.DML comand we use
alter table students
add city varchar(288);

# Column added after particular column i.e. roll_no :  alter use
alter table students
add Country varchar(288)
after Roll_no;

# drop a particular columns
alter table students
drop city , drop country , drop Teacher_id;

#describe :  to check data types, null=yes for age because we can insert null values also
describe students;

# Modify : use to change data type
alter table students
modify Student_name varchar(200);

# rename the column :  we use change old_name new_name
alter table students
change Roll_No ID int;

# Rename Table : we use rename to new_name
alter table students
rename to ExcelR;

# To convert back: use same query again
alter table excelR
rename to students;