USE employees;

# all departments currently managed by women
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender ='F';

# current titles of employees currently working in the Customer Service department
SELECT t.title AS title, COUNT(t.title) AS total FROM titles t
JOIN dept_emp de ON t.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Customer Service' AND t.to_date = '9999-01-01' GROUP BY (title);

# current salary of all current managers
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name), s.salary FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no
Join salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01' ORDER BY dept_name;

# all current employees, their department name, and their current manager's name
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employees', d.dept_name AS 'Department Name', CONCAT(managers.first_name, ' ', managers.last_name) AS 'Managers'
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN dept_manager dm ON de.dept_no = dm.dept_no
JOIN employees AS managers ON managers.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
ORDER BY d.dept_name;

