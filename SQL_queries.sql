--Q1--


select emp_no, last_name, first_name, sex,
(select salaries.salary
	from salaries
	where employees.emp_no = salaries.emp_no ) 
from employees;
	
	
	
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries 
on employees.emp_no = salaries.emp_no;

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
	from employees e inner join salaries s on
	e.emp_no = s.emp_no;

--Q2--
select * from employees;

select first_name, last_name, hire_date 
from employees
where hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'
order by hire_date;


--Q3--
select * from dept_manager;

select dept_manager.dept_no, dept_manager.emp_no, department.dept_name, employees.last_name, employees.first_name
from dept_manager
join department
on dept_manager.dept_no = department.dept_no
join employees
on dept_manager.emp_no = employees.emp_no;

--Q4--
select employees.emp_no, employees.last_name, employees.first_name, department.dept_name
from dept_emp
join employees 
on dept_emp.emp_no = employees.emp_no
join department
on dept_emp.dept_no = department.dept_no;


--Q5--
select first_name, last_name, sex from employees
where first_name = 'Hercules'  and 
	last_name like 'B%' ;
	
	
--Q6--

select * from department;
select * from dept_emp;
select * from employees;


select emp_no, last_name, first_name from employees
where emp_no in
(
	select emp_no
	from dept_emp
	where dept_no = 'd007');
	
	
--Q7--
select * from department;

select emp_no, last_name, first_name from employees
where emp_no in
(
	select emp_no
	from dept_emp
	where dept_no in ('d007','d005'));
	
	

--Q8--

select last_name, count(last_name) as "last_name_count"
from employees
group by last_name
order by "last_name_count" DESC;

select distinct last_name from employees;
select last_name from employees;	

select * from salaries;
select * from title;
select * from dept_emp;
select * from employees;



