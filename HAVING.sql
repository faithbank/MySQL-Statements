# HAVING
# It refines the output from records that do not satisfy A certain conditon.
# Frequently implemented with GROUP BY. 

SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';  
# After HAVING, you can have a condition with an aggregate function. WHERE cannot use 
#aggregate functions within its conditions


# To extract data of all first names that appear more than 250 times in the employees table
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250 
ORDER BY first_name;
# Because the above code requires the aggregate function 'COUNT', HAVING is used in place of WHERE