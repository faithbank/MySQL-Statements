# JOIN and WHERE
-- JOIN is used to connect the tables
-- WHERE is used to define the condition that determines the connecting points between the two tables
SELECT 
    e.emp_no, e.first_name, e.last_name, s.salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    s.salary > 145000;

/* TASK: 
Select the first and last name, the hire date, and the job title of all employees whose
first name is "Margareta" and have the last name "Markovitch" */

SELECT e.emp_no, e.first_name, e.last_name, e.hire_date, t.title
FROM employees e
join titles t on e.emp_no = t.emp_no
where first_name = 'Margareta' and last_name = 'Markovitch';

