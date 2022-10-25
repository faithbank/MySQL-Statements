# To JOIN more than two tables
SELECT 
	e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
	employees e
		JOIN
	dept_manager m ON e.emp_no = m.emp_no
		JOIN
	departments d ON m.dept_no = d.dept_no
;

SELECT
	d.dept_name, AVG(salary) AS average_salary
FROM
	departments d
		JOIN
	dept_manager m ON d.dept_no = m.dept_no
		JOIN
	salaries s ON m.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING average_salary > 60000
ORDER BY average_salary DESC
;
# Without a GROUP BY statement, MySQL applies a default order to the departments and delivers only the first
# Tables can be ORDERED BY fields not explicitly stated in the select statement.
