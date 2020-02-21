-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
select Employees.emp_no, 
	Employees.last_name, 
	Employees.first_name, 
	Employees.gender, 
	Salaries.salary
from Employees
inner join Salaries on
Employees.emp_no = Salaries.emp_no;

-- 2. List employees who were hired in 1986.
select employees.emp_no,
	employees.first_name,
	employees.last_name,
	EXTRACT (YEAR FROM hire_date) AS YEAR
from employees
where hire_date > '12/31/1985' and hire_date < '01/01/1987';

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and 
-- start and end employment dates.

select dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.first_name,
	e.last_name,
	dm.from_date,
	dm.to_date
from dept_manager as dm
join employees as e on
dm.emp_no = e.emp_no
join departments as d
on d.dept_no = dm.dept_no;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

select employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no = dept_emp.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
select employees.first_name,
	employees.last_name
from employees
where first_name = 'Hercules' and last_name like 'B%'; 

-- 6. List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
select employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
from employees 
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.

select employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, count(last_name) as name_count
from employees
group by last_name
order by name_count desc;


