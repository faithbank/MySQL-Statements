# LEFT JOINT
DELETE FROM dept_manager_dup
WHERE emp_no = '110228';

DELETE FROM departments_dup
WHERE dept_no = 'd009';

insert into dept_manager_dup
values ('110228','d003','1992-03-21','9999-01-01');

insert into departments_dup
values ('d009','Customer Service');

# LEFT JOIN
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no 		
ORDER BY m.dept_no;
# When working with left joins, the order in which you join the tables matters. 

# Inverting the order of the tables...
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
WHERE
    dept_name IS NULL
ORDER BY m.dept_no;

/* TASK:
Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees
whose last name is Markovitch. See if the output contains a manager with that name. */
 
SELECT 
    e.emp_no, e.first_name, e.last_name, m.dept_no, m.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager m ON e.emp_no = m.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY m.dept_no DESC , e.emp_no;