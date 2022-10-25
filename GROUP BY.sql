# GROUP BY
SELECT 
    first_name
FROM
    employees
GROUP BY first_name; # GROUP BY only selects distinct values

# Code above is the same as:
SELECT DISTINCT
    first_name
FROM
    employees; 
# GROUP BY is slower than SELECT DISTINCT

# In most cases when using an aggregate function, you must add a GROUP BY clause
# To determine the number of times a first name is encountered in the database
SELECT 
# Always include the field you have grouped the results by in the select statement
    first_name, COUNT(first_name) 
FROM
    employees
GROUP BY first_name
ORDER BY first_name;
