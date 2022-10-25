# IN / NOT IN
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'Mark'
        OR first_name = 'Nathan';

        
# The IN statement runs faster than the above code.
SELECT
    *
FROM
    employees
WHERE
    first_name IN ('Cathie', 'Mark', 'Nathan'); 


# NOT IN
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie', 'Mark', 'Nathan');
 
 
#Task 1:
#Use the IN operator to select all individuals from the employees table, whose first name 
# is either Denise, or Elvis.
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denise' , 'Elvis'); 


# Task 2:
#Extract all records from the employees table, aside from those with employees named John, Mark, or Jacob.
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob')
        AND last_name NOT IN ('John' , 'Mark', 'Jacob');