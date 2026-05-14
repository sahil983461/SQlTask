create table Department(deptid serial primary key,	dept_name varchar, 	location varchar,	budget int);

create table Employee(emp_id serial primary key,	firstname varchar,	lastname varchar,	manager_id int,	dept_id	int references department(deptid), hire_date date,	job_title varchar,	salary int);

create table Project(project_id serial primary  key,	project_name varchar,	dept_id int references department (deptid),	start_date date,	end_date date,	budget int);

create table Salaries(emp_id int, foreign key(emp_id) references employee(emp_id),	salary_date date,	salary int,	bonus int,	performance_rating varchar);

create table Project_ass(emp_id int ,foreign key(emp_id) references employee(emp_id),	project_id	int references project (project_id),assigned_date date,	role varchar,	hours_per_week int);




copy Department from 'E:\ARC Classes\SQL\Notes\Data for Joins-20260512T052259Z-3-001\Data for Joins\Departments Table.csv' delimiter ',' csv header;

copy employee from 'E:\ARC Classes\SQL\Notes\Data for Joins-20260512T052259Z-3-001\Data for Joins\Employees Table.csv' delimiter ',' csv header;

copy project from 'E:\ARC Classes\SQL\Notes\Data for Joins-20260512T052259Z-3-001\Data for Joins\Projects Table.csv' delimiter ',' csv header;

copy salaries from 'E:\ARC Classes\SQL\Notes\Data for Joins-20260512T052259Z-3-001\Data for Joins\Salaries Table.csv' delimiter ',' csv header;

copy Project_ass from 'E:\ARC Classes\SQL\Notes\Data for Joins-20260512T052259Z-3-001\Data for Joins\Project_Assignments Table.csv' delimiter ',' csv header;


select  * from department;
select  * from employee;
select  * from project;
select  * from salaries;
select  * from project_ass;