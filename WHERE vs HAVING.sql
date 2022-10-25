# WHERE vs HAVING
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY (first_name)
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;