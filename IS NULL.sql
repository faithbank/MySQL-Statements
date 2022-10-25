# IS NOT NULL
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;
    
# IS NULL
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
    

# Task:
# Select the names of all departments whose department number value is not null.
SELECT 
    *
FROM
    departments
WHERE
    dept_no IS NOT NULL;
