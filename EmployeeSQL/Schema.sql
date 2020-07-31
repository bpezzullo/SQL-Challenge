
CREATE TABLE IF NOT EXISTS titles (
	Employee_title Varchar(5) Primary Key,
	Title varchar(25)
);

Create Table IF NOT EXISTS departments (
	Dept_no varchar(5) Primary Key,
	Name varchar(25)
);

CREATE TABLE IF NOT EXISTS employees (
	Employee_no INTEGER Primary Key,
	Title varchar(5),
	DOB date,
	First_name varchar(25),
	Last_name varchar(25),
	Gender varchar(1),
	Hire_date date,
	FOREIGN KEY (Title) REFERENCES titles(employee_title)
);

CREATE TABLE IF NOT EXISTS dept_emp (
	Employee_no Integer,
	FOREIGN KEY (Employee_no) REFERENCES employees(Employee_no),
	Dept_no varchar(5),
	FOREIGN KEY (Dept_no) REFERENCES departments(Dept_no),
	PRIMARY KEY (Employee_no, Dept_no)
);
	
CREATE TABLE IF NOT EXISTS dept_manager (
	Dept_no varchar(5),
	FOREIGN KEY (Dept_no) REFERENCES departments(Dept_no),
	Employee_no INT,
	FOREIGN KEY (Employee_no) REFERENCES employees(Employee_no),
	PRIMARY KEY (Dept_no,Employee_no)
);

CREATE TABLE IF NOT EXISTS salaries (
	Employee_no INT Primary Key,
	FOREIGN KEY (Employee_no) REFERENCES employees(Employee_no),
	Salary money
);



