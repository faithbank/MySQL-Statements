# UPDATE STATEMENT
# Used to update the values of existing records in a table

SET autocommit=0;
START TRANSACTION; 
 
USE employees;
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;
    
    
UPDATE employees
SET 
	first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
	emp_no = 999901; 
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;
    
# If WHERE condition is not provided, all rows of the table will be updated.
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

COMMIT;  # The COMMIT comand saves the database as is.

UPDATE departments_dup
SET
	dept_no = 'd011',
    dept_name = 'Quality Control';
    
# To undo this action, execute the ROLLBACK command.
# ROLLBACK takes us to the last commit run, or the beginning of the sql code if not committed.
ROLLBACK;

# Task: 
# To change the "Business Analysis" department name to "Data Analysis".
SELECT 
    *
FROM
    departments;

UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_name = 'Business Analysis';
    
SET autocommit=1;
