USE employees;

# employees with the same hire date as employee 101010
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', e.hire_date AS 'Hire Date'
FROM employees e WHERE e.hire_date IN (
    SELECT hire_date
    FROM employees emp
    WHERE emp.emp_no = 101010
);

# titles held by all employees with the first name Aamod
SELECT DISTINCT t.title AS 'Title', COUNT(t.title) AS 'Total'
FROM employees e
JOIN titles t on e.emp_no = t.emp_no
WHERE e.first_name = 'Aamod' GROUP BY t.title;

# current department managers that are female
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name', d.dept_name AS 'Department Name'
FROM employees e JOIN dept_manager dm on e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE e.gender = 'F' AND dm.to_date = '9999-01-01' ORDER BY d.dept_name;

SELECT e.first_name, e.last_name
FROM employees e WHERE e.gender = 'F' AND
 e.emp_no IN (
    SELECT emp_no FROM dept_manager dm
    WHERE dm.to_date = '9999-01-01');

# employee with highest salary
SELECT e.first_name, e.last_name
FROM employees e JOIN salaries s on e.emp_no = s.emp_no
WHERE s.salary IN (
    SELECT MAX(s.salary)
    FROM salaries s
    );