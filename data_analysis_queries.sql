SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM  employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM  employees e
WHERE EXTRACT(YEAR FROM e.hire_date) = 1986;


SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN departments AS d
	ON dm.dept_no = d.dept_no
JOIN employees AS e
	ON dm.emp_no = e.emp_no;
	
	

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no;



SELECT emp_no, first_name, last_name
FROM employees
where lower(first_name) = 'hercules'
AND LEFT(upper(last_name), 1) = 'B';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no
and d.dept_name = 'Sales';


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no
and d.dept_name in ('Sales', 'Development');



SELECT last_name, COUNT(emp_no) AS "count"
FROM employees
GROUP BY last_name
ORDER BY count DESC;
