-- Task 1

-- create table Employee_details(EmployeeID Serial ,
-- 	FirstName VARCHAR (50) ,
-- 	LastName VARCHAR (50 ),
-- 	Email VARCHAR (100) ,
-- 	PhoneNumber VARCHAR (15), 
-- 	HireDate DATE ,
-- 	Salary DECIMAL(10,2), 
-- 	DepartmentID Integer, 
-- 	IsActive BOOLEAN ,
-- 	JobTitle VARCHAR (100)
-- )


--Task 2

-- insert into Employee_details(FirstName  ,
-- 	LastName ,
-- 	Email  ,
-- 	PhoneNumber , 
-- 	HireDate ,
-- 	Salary , 
-- 	DepartmentID , 
-- 	IsActive  ,
-- 	JobTitle 
-- ) values 
-- ('Sahil','Misar','misar@gmail.com',986564979,'2026-10-1',60000,001,True,'Data_Analyst'),
-- ('Bahvesh','Kolhe','kolhe@gmail.com',98659845,'2026-10-2',550000,002,True,'Business_ANalyst'), 
-- ('Ritesh','Deshmukh','Deshmukh@gmail.com',98659845,'2026-10-1',650000,003,False,'Teamlead') ,
-- ('Avinash','Deshmukh','Dshmukh@gmail.com',98659845,'2026-10-1',670000,004,True,'Trainee') ,
-- ('Akash','Amabni','@gmail.com',98659845,'2026-10-6',750000,005,false,'Manager')

--Task 3
-- copy Employee_details from 'E:\ARC Classes\SQL\Task\Employee_Details (2).csv'  csv header;


--Task 4
-- update  Employee_details 
-- set Departmentid=0 where isactive=false;

--Task 5
-- update Employee_details 
-- set salary=salary * 1.08 where isactive =False and Departmentid=0 and Jobtitle in('HR Manager','Financial Analyst','Business Anaalyst','Data Analyst');

--Task 6
-- select firstName as Name , Lastname as Surname , Salary from Employee_details 
-- where Salary between 30000 and 50000;

--Task 7
-- Select * from Employee_details 
-- where firstname like 'A%';

--Task 8
-- delete from Employee_Details
-- where Employeeid between 1 and 5;

-- Task 9
-- Alter table Employee_details
--  rename to Employee_database2;

-- Alter table Employee_database2
-- Rename column Firstname to Name;

-- Alter table Employee_Database2
-- Rename column Lastname to Surname;

--Task 10
-- alter table Employee_database2
-- add column State   varchar Not null default 'India';

-- update Employee_database2
-- set state= 'USA'  where Isactive = false;
