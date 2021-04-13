--creating title table--
create table title (
title_id varchar(30) primary key,
title varchar(30));


--creating salaries table ---
create table salaries (
emp_no int not null,
salary int not null,
foreign key (emp_no) references employees(emp_no));
 
--creating employees table--
create table employees (
emp_no int not null primary key,
title_id varchar(30),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(5),
hire_date date,
foreign key (title_id) references title(title_id));

--creating_department table--
create table department ( 
dept_no varchar(30) primary key,
dept_name varchar(30));

--creating dept_emp table --
create table dept_emp (
emp_no int not null,
dept_no varchar(10),
foreign key (dept_no) references department(dept_no),
foreign key (emp_no) references employees(emp_no));



--creating manager table --
create table dept_manager (
dept_no varchar(30),
emp_no int not null,
foreign key (dept_no) references department(dept_no),
foreign key (emp_no) references employees(emp_no));

alter table dept_manager
add column id serial primary key ;

select * from department;
select * from employees;
select * from dept_manager;
select * from dept_emp;
select * from title;
select * from salaries;