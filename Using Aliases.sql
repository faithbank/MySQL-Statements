# Using Aliases
# An alias or alias name is used to rename a selection from your query
# It uses the keyword AS
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name;