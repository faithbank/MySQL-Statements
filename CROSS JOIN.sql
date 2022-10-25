# CROSS JOIN
/* CROSS JOIN takes the values from a certain table and connects them with all the values
from the table we want to join it with. */
/* In contrast with INNER JOIN that only connects the matching values, CROSS JOIN connects
all the values, not just those that match. */
-- It is the cartesian product of the values of two or more sets. 
-- Particularly usefulwhen the tables in the database are not well connected. 

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

# The code below gives the same output
SELECT 
    dm.*, d.*
FROM
    dept_manager dm,
    departments d
ORDER BY dm.emp_no , d.dept_no;

# MySQL also processes the code below as a CROSS JOIN
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
		JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

-- When no condition is assigned to a join statement, it is interpreted as a CROSS JOIN
-- However, this is not considered best practice. 
-- Writing CROSS JOIN provides clarity as to the purpose of the code. This is best practice

# To display all departments but the one the manager is currently head of...
SELECT 
    dm.*, d.*
FROM
    departments d
		CROSS JOIN
    dept_manager dm
WHERE 
	d.dept_no <> dm.dept_no	
ORDER BY dm.emp_no , d.dept_no; 

# Using CROSS JOIN for more than two tables
SELECT 
    e.*, d.*
FROM
    departments d
		CROSS JOIN
    dept_manager dm
		JOIN
	employees e ON dm.emp_no = e.emp_no
WHERE 
	d.dept_no <> dm.dept_no	
ORDER BY dm.emp_no , d.dept_no; 

/* Task 1:
Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9. */
SELECT dm.*, d.*, de.*, e.*, s.*, t.*
FROM dept_manager dm CROSS JOIN departments d JOIN dept_emp de JOIN employees e JOIN salaries s JOIN titles t on dm.emp_no = e.emp_no
where dm.dept_no = 'd009';

/* Task 2:
Return a list with the first 10 employees with all the departments they can be assigned to.

Hint: Don't use LIMIT; use a WHERE clause.