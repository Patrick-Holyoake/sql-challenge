--1 
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

--2
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date > '1985-12-31' AND employees.hire_date < '1987-01-01'
ORDER BY employees.hire_date;

--3
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

--4
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

--5
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules' AND last_name LIKE 'B%'

--6
SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
WHERE dept_no = 'd007';

--7
SELECT employees.first_name, employees.last_name, employees.emp_no, dept_emp.emp_no
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.dept_no = 'd007' 
OR dept_emp.dept_no = 'd005';

--8
SELECT last_name,
COUNT(last_name) AS Total
FROM employees
GROUP BY last_name
ORDER BY Total DESC;
