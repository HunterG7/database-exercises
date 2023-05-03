USE employees;
SHOW TABLES;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya','Maya') ORDER BY last_name, first_name;
SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
SELECT  * FROM employees WHERE last_name LIKE 'e%' ORDER BY emp_no DESC;
SELECT  * FROM employees WHERE last_name LIKE '%q%';
SELECT * FROM employees WHERE (last_name LIKE 'e%') OR (last_name LIKE '%e');
SELECT * FROM employees WHERE (last_name LIKE 'e%') AND (last_name LIKE '%e') ORDER BY emp_no DESC;
SELECT  * FROM employees WHERE (last_name LIKE '%q%') AND (last_name NOT LIKE '%qu%');

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE (last_name LIKE 'e%') OR (last_name LIKE '%e');
SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;
SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999;
SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;
SELECT datediff(CURTIME(), hire_date) FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999;

