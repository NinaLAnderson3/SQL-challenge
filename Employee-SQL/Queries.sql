-----Data analysis Query 1-----
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

------Query 2------
SELECT last_name,
	first_name,
	hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-----Query 3-----
SELECT
	d.dept_name,
	dm.dept_no,
	dm.emp_no,
	e.last_name,
	e.first_name
FROM ((departments d INNER JOIN dept_manager dm ON
	  d.dept_no = dm.dept_no)
	 INNER JOIN employees e on dm.emp_no = e.emp_no);
	 
-------Query 4---------
SELECT e.emp_no, 
	e.last_name, 
	e.first_name, 
	de.dept_name,
	d.dept_name
FROM ((employees e INNER JOIN dept_emp de ON
	  e.emp_no = de.emp_no)
	 INNER JOIN departments d ON de.dept_name = d.dept_no);

------Query 5---------
SELECT first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

------Query 6------------
SELECT e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM ((employees e INNER JOIN dept_emp de ON
	  e.emp_no = de.emp_no)
	 INNER JOIN departments d ON de.dept_name = d.dept_no)
	 WHERE d.dept_name = 'Sales';

-----Query 7 -----------
SELECT e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM ((employees e INNER JOIN dept_emp de ON
	  e.emp_no = de.emp_no)
	 INNER JOIN departments d ON de.dept_name = d.dept_no)
	 WHERE d.dept_name in (SELECT d.dept_name FROM departments 
						   WHERE d.dept_name = 'Sales' OR d.dept_name ='Development');

-----Query 8-----
SELECT employees.last_name, count(employees.last_name)
FROM employees
GROUP BY employees.last_name 
ORDER BY count(employees.last_name) DESC;

	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 


