# COUNT Function

# To determine how many employees are registered in the database
SELECT 
    COUNT(emp_no)
FROM
    employees;
    
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
    
SELECT 
    COUNT(first_name)
FROM
    employees;
    
# COUNT(DISTINCT)
# How many different names can be found in the employees table
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
    
# Task 1:
# How many annual contracts with a value higher than or equal to $100,000 have been registered 
# in the salaries table? 
SELECT 
    COUNT(salary > '100000')
FROM
    salaries;
 
# Task 2:
# How many managers do we have in the employees database?
SELECT 
    COUNT(emp_no)
FROM
    dept_manager;