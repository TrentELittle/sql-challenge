
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT Employees.emp_no,
	   Employees.last_name,
	   Employees.first_name,
	   Employees.sex,
	   Salaries.salary
FROM Employees
INNER JOIN Salaries ON Employees.emp_no = Salaries.emp_no
;


-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp_no, first_name, last_name, hire_date
FROM Employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01'
;


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT Dept_Manager.dept_no,
       Departments.dept_name,
	   Dept_Manager.emp_no,
	   Employees.last_name,
	   Employees.first_name
FROM Dept_Manager
INNER JOIN Departments ON Dept_Manager.dept_no = Departments.dept_no
INNER JOIN Employees ON Dept_Manager.emp_no = Employees.emp_no
;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT Employees.emp_no,
       Employees.last_name,
       Employees.first_name,
       Departments.dept_name
FROM Employees
INNER JOIN Dept_Employees ON Employees.emp_no = Dept_Employees.emp_no
INNER JOIN Departments ON Dept_Employees.dept_no = Departments.dept_no
;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
;


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT Employees.emp_no,
       Employees.last_name,
       Employees.first_name,
       Departments.dept_name,
INNER JOIN Dept_Employees ON Employees.emp_no = Dept_Employees.emp_no
INNER JOIN Departments ON Dept_Employees.dept_no = Departments.dept_no
WHERE dept_name = 'Sales'
;


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT Employees.emp_no,
       Employees.last_name,
       Employees.first_name,
       Departments.dept_name,
INNER JOIN Dept_Employees ON Employees.emp_no = Dept_Employees.emp_no
INNER JOIN Departments ON Dept_Employees.dept_no = Departments.dept_no
WHERE dept_name = 'Sales' AND 'Development'
;


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM Employees
GROUP BY last_name
ORDER BY COUNT(last_name) desc
;

