# Wild Characters
# Task 1:
# To extract all individuals from the "employees" table whose first name contains "Jack".
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Jack';

#To extract another list containing the names of employees that do not contain "Jack".
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Jack')