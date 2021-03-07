/* List the following details of each employee: 
employee number, last name, first name, sex, and salary.*/
Select 
e.emp_no, 
e.last_name,
e.first_name,
e.sex,
s.salary
From Salaries as s
Inner Join Employees as e on
e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date 
from Employees 
Where hire_date > '1986-01-01' AND hire_date <= '1986-12-31'

/* List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, first name.*/
Select
dm.dept_no, 
d.dept_name, 
dm.emp_no,
e.last_name,
e.first_name
From Dept_Manager as dm
Join Departments as d ON dm.dept_no = d.dept_no
Join Employees as e On (e.emp_no = dm.emp_no)

/* List the department of each employee with the following information: 
employee number, last name, first name, and department name.*/
Select
de.emp_no,
e.last_name,
e.first_name,
d.dept_name
From Dept_emp as de
Join Departments as d ON de.dept_no= d.dept_no
Join Employees as e On (e.emp_no=de.emp_no)

/* List first name, last name, and sex 
for employees whose first name is "Hercules" and last names begin with "B."*/
Select
first_name, 
last_name, 
sex 
From Employees 
Where first_name= 'Hercules' AND last_name like 'B%'

/* List all employees in the Sales department, including their 
   employee number, last name, first name, and department name.*/
Select
de.emp_no,
e.last_name,
e.first_name,
d.dept_name
From Employees as e
Join Dept_emp as de On de.emp_no = e.emp_no
Join Departments as d On (de.dept_no = d.dept_no)
Where dept_name = 'Sales'

/* List all employees in the Sales and Development departments, including their 
   employee number, last name, first name, and department name. */ 
Select
de.emp_no,
e.last_name,
e.first_name,
d.dept_name
From Employees as e
Join Dept_emp as de On de.emp_no = e.emp_no
Join Departments as d On (de.dept_no = d.dept_no)
Where dept_name = 'Sales' OR dept_name = 'Development'

/* In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name.*/
Select last_name, 
Count(Last_Name) 
From Employees 
Group By last_name 
Order By Count Desc