# AND statement (= equal operator)
    SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' and gender = 'M';
    
    
# Task 1:
# To select all people from the "employees" table whose first name is "Elvis".
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';
    
    
# Task 2:
# To retrieve a list with all female employees whose first name is Kellie.
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';