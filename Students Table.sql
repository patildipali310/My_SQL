CREATE TABLE Students(   # Used to create column
Roll_No INT,
Students_Name VARCHAR(100),
Age INT,
City VARCHAR(100)
);

select * from Students;

INSERT INTO Students        # Insert values in table
VALUES(101, "Deepak",20,"Pune"),
	  (102,"Radha", 18,"Mumbai"),
	  (103,"Raju",22,"Banglore");
      
SELECT * FROM Students;             #used to select/print all the info in the created columns
SELECT Students_Name,City FROM Students;  # Used to print paticular columns from the table
SELECT City,Students_Name FROM Students;

DROP TABLE Students;