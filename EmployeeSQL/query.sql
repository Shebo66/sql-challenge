SELECT e.emp_no, last_name, first_name, sex, salary
FROM "DataEmployees" AS e
LEFT JOIN "Salaries" AS s
ON s.emp_no=e.emp_no;

SELECT first_name, last_name, hire_date
FROM "DataEmployees" AS e
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT d.dept_no, m.emp_no, d.dept_name, e.last_name, e.first_name
FROM "Manager" AS m
LEFT JOIN "Department" AS d
ON d.dept_no=m.dept_no
LEFT JOIN "DataEmployees" AS e
ON m.emp_no=e.emp_no;

SELECT e.emp_no, last_name, first_name, d.dept_name
FROM "DataEmployees" AS e
LEFT JOIN "Employee" AS n
ON n.emp_no=e.emp_no
LEFT JOIN "Department" AS d
ON d.dept_no=n.dept_no
ORDER BY e.emp_no;

SELECT first_name, last_name, sex
FROM "DataEmployees" AS d
WHERE first_name='Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, last_name, first_name, d.dept_name
FROM "DataEmployees" AS e
LEFT JOIN "Employee" AS n
ON n.emp_no=e.emp_no
LEFT JOIN "Department" AS d
ON d.dept_no=n.dept_no
WHERE d.dept_name='Sales'
ORDER BY e.emp_no;

SELECT e.emp_no, last_name, first_name, d.dept_name
FROM "DataEmployees" AS e
LEFT JOIN "Employee" AS n
ON n.emp_no=e.emp_no
LEFT JOIN "Department" AS d
ON d.dept_no=n.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development'
ORDER BY e.emp_no;

SELECT last_name, COUNT(last_name)
FROM "DataEmployees" AS d
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
