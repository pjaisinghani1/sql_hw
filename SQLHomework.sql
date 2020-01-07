SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

SELECT * FROM employees e WHERE hire_date > '1986-01-01';

SELECT d.dept_no, dept_name, e.emp_no, last_name, first_name, from_date, to_date
FROM employees e 
INNER JOIN dept_manager m on
e.emp_no = m.emp_no 
INNER JOIN departments d on 
m.dept_no = d.dept_no;


SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e
INNER JOIN dept_emp m on
e.emp_no=m.emp_no
INNER JOIN departments d on
m.dept_no = d.dept_no;

SELECT * FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e
INNER JOIN dept_emp m on
e.emp_no=m.emp_no
INNER JOIN departments d on
m.dept_no = d.dept_no
WHERE dept_name = 'Sales';

SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e
INNER JOIN dept_emp m on
e.emp_no=m.emp_no
INNER JOIN departments d on
m.dept_no = d.dept_no
WHERE dept_name IN ('Sales','Development');

SELECT last_name, COUNT(last_name) AS "employee count"
FROM employees
GROUP BY last_name
ORDER BY "employee count" DESC;