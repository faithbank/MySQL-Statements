# Other Comparison Operators
# '=' equal
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Mark';
    
# '<>' or '!=' Not equal
SELECT 
    *
FROM
    employees
WHERE
    first_name <> 'Mark';
    
# '>' greater than
# Provide the list of employees hired after the 1st of January 2000
SELECT 
    *
FROM
    employees
WHERE
	hire_date > '2000-01-01';
    
# Provide the list of employees hired before the 1st of January 1985
SELECT 
    *
FROM
    employees
WHERE
	hire_date < '1985-02-01';
    
# Task 1:
#To retrieve a list with data about all female employees who were hired in the year 2000 or after.
SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01'
        AND gender = 'F';


#To extract a list with all employees' salaries higher than $150,000 per annum.
SELECT 
    *
FROM
    salaries
WHERE
    salary > '150000'