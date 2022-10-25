# INNER JOIN
SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

###
SELECT 
    m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

# Inner JOIN extracts only records in which the values in the related columns match.
# Null values and vlues appearing in only one of the two tables are not displayed. 
# The word 'inner' is not obligatory. 

/*
Task:
Extract a list containing information about all managers' employee number, first and last name,
department number, and hire date. */

select m.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
from dept_manager_dup m
inner join employees e on m.emp_no = e.emp_no
order by m.emp_no;