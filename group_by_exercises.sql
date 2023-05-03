USE employees;

SELECT DISTINCT title FROM titles;
SELECT DISTINCT first_name FROM employees WHERE first_name LIKE 'e%' AND first_name LIKE '%e' ORDER BY first_name;
SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY last_name;
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
SELECT DISTINCT COUNT(last_name), last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;
SELECT COUNT(*), gender FROM employees WHERE first_name IN ('Irena', 'Vidya','Maya') GROUP BY gender;

