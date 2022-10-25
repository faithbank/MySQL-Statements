USE employees;
SET autocommit=0;
START TRANSACTION; 

commit;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    
commit;

DELETE FROM employees 
WHERE
    emp_no = 999903;
    
ROLLBACK;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

DELETE FROM departments_dup;

rollback;

# Attach a condition in the where clause to avoid losing all the data in the table. 

SET autocommit=1;

# Task:
# Remove the department number 10 record from the "departments" table.
DELETE FROM departments 
WHERE
    dept_no = 'd010';