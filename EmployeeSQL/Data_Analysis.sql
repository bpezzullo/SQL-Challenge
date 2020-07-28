--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select e.employee_no, last_name, first_name, gender, salary from employees e
inner join salaries s on s.employee_no= e.employee_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date from employees
where date_part('year',hire_date)=1986 ;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select d.dept_no, d.name, dm.employee_no, e.last_name, e.first_name     from departments d
inner join dept_manager dm on d.dept_no=dm.dept_no
inner join employees e on dm.employee_no = e.employee_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.employee_no, e.last_name, e.first_name, d.name from employees e
inner join dept_emp de on e.employee_no=de.employee_no
inner join departments d on de.dept_no = d.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select e.first_name, e.last_name, e.gender from employees e
where e.first_name = 'Hercules' and e.last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select e.employee_no, e.last_name, e.first_name, d.name from departments d
inner join dept_emp de on d.dept_no = de.dept_no
inner join employees e on de.employee_no = e.employee_no
where d.name like '%Sales%';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select e.employee_no, e.last_name, e.first_name, d.name from departments d
inner join dept_emp de on d.dept_no = de.dept_no
inner join employees e on de.employee_no = e.employee_no
where d.name like '%Sales%' or d.name like '%Development%';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select last_name, count(*) as Name_count from employees
group by last_name
order by last_name desc;

Select last_name, count(*) as Name_count from employees
group by last_name
order by Name_count desc,last_name desc;
