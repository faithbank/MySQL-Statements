# LIKE/NOT LIKE OPERATOR
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');
    
    
# The '_' sign is used to match a single character   
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');
    
    
# NOT LIKE
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Mar%');
    

# Task 1:
# Using the LIKE operator to select the data about all individuals, whose first name starts with "Mark"
# specify that the name can be succeeded by any sequence of characters.

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');
    
# Task 2:
# To retrieve a list with all employees who have been hired in the year 2000.
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('2000%');
    
# Task 3:
# To retrieve a list with all employees whose employee number is written with 5 characters, 
# and starts with "1000"
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_')