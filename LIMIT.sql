#LIMIT
SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY (first_name)
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC
LIMIT 100;

# Task:
# To select the first 100 rows from the 'dept_emp' table.
SELECT 
    *
FROM
    dept_emp
LIMIT 100
