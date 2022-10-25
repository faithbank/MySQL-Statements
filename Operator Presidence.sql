# Operator Precedence
SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' and (gender = 'M' OR gender = 'F');

# Task:
# To retrieve a list with all female employees whose first name is either Kellie or Aruna.
SELECT 
    *
FROM
    employees
WHERE
    (first_name = 'Kellie' OR 'Aruna')
        AND gender = 'F'; 
    