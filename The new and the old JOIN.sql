# The new and the old JOIN
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
    
-- WHERE (The old JOIN syntax)
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m,
    departments_dup d 
WHERE m.dept_no = d.dept_no
ORDER BY m.dept_no;

# The retrieved output is identical
# Using where is more time consuming
# Where is considered morally old and is rarely employed by professionals
# The JOIN syntax allows you modify the connection between tables easily

/* TASK: 
Extract a list containing information about all managers' employee number, first and 
last name, department number, and hire date. Use the old type of join syntax to obtain
the result. */

SELECT 
    m.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM
    employees e,
    dept_manager_dup m
WHERE   e.emp_no = m.emp_no
ORDER BY e.emp_no DESC;