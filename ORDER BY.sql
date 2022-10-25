# ORDER BY
SELECT 
    *
FROM
    employees
ORDER BY first_name ASC; 

#ASC stands for ascending. This is the default. DESC is the reverse.
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

# Ordering results by multiple fields
SELECT 
    *
FROM
    employees
ORDER BY first_name, last_name ASC;

# Task:
# To select all data from the "employees" table, ordering it by "hire date" in descending order.
SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;
