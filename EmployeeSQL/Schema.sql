BEGIN


CREATE TABLE titles (
	Employee_title Varchar(5) Primary Key,
	Title varchar(25)
);

Create Table departments (
	Dept_no varchar(5) Primary Key,
	Name varchar(25)
);

ALTER TABLE public.departments
    ADD CONSTRAINT "Dept_no" FOREIGN KEY (dept_no)
    REFERENCES public.dept_name (dept_no) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    DEFERRABLE INITIALLY DEFERRED
    NOT VALID;

CREATE TABLE employees (
	Employee_no INTEGER Primary Key,
	Title varchar(5),
	DOB date,
	First_name varchar(25),
	Last_name varchar(25),
	Gender varchar(1),
	Hire_date date
);
ALTER TABLE public.employee
    ADD CONSTRAINT "employee_title" FOREIGN KEY (Title)
    REFERENCES public.titles (employee_title) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    DEFERRABLE INITIALLY DEFERRED
    NOT VALID;

CREATE TABLE dept_emp (
	Employee_no Integer,
	Dept_no varchar(5)
);
ALTER TABLE public.dept_emp
    ADD CONSTRAINT "Dept_no" FOREIGN KEY (dept_no)
    REFERENCES public.departments (dept_no) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    DEFERRABLE INITIALLY DEFERRED
    NOT VALID;

ALTER TABLE public.dept_emp
    ADD CONSTRAINT "employee_no" FOREIGN KEY (employee_no)
    REFERENCES public.employees (employee_no) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    DEFERRABLE INITIALLY DEFERRED
    NOT VALID;
	
CREATE TABLE dept_manager (
	Dept_no varchar(5),
	Employee_no INT
);
	
ALTER TABLE public.dept_manager
    ADD CONSTRAINT "employee_no" FOREIGN KEY (employee_no)
    REFERENCES public.employees (employee_no) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    DEFERRABLE INITIALLY DEFERRED
    NOT VALID;

	
ALTER TABLE public.dept_manager
    ADD CONSTRAINT "Dept_no" FOREIGN KEY (Dept_no)
    REFERENCES public.departments (Dept_no) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    DEFERRABLE INITIALLY DEFERRED
    NOT VALID;
	

CREATE TABLE salaries (
	Employee_no INT Primary Key,
	Salary money
);

	
ALTER TABLE public.salaries
    ADD CONSTRAINT "employee_no" FOREIGN KEY (employee_no)
    REFERENCES public.employees (employee_no) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    DEFERRABLE INITIALLY DEFERRED
    NOT VALID;



END;
