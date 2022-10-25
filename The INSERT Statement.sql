# The INSERT Statement
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

INSERT into employees
(
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
) VALUES
(
	999901,
	'1986-01-21',
    'John',
    'Smith',
    'M',
    '2011-01-01'
);

INSERT into employees
(
	birth_date,
    emp_no,
    first_name,
    last_name,
    gender,
    hire_date
) VALUES
(
	'1972-03-26',
    999902,
    'Patricia',
    'Laurence',
    'F',
    '2005-01-01'
); 

INSERT INTO employees
VALUES
(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);
# Task:
# insert information about employee number 999903. State that he is a Senior Engineer, who 
# has started working in this position on October 1st, 1997. At the end, sort the records 
# from the titles table in descending order to check if you have successfully inserted the 
# new record.
SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC
LIMIT 10;

use employees;

insert into titles 
(
	emp_no,
    title,
    from_date
) VALUES
(
    999903,
    'Senior Engineer',
    '1997-10-01'
); 

# Task 2:
# Insert information about the individual with employee number 999903 into the dept_emp table. He/She is working for department number 5, and has 
# started work on October 1st, 1997; her/his contract is for an indefinite period of time.
# Hint: Use the date 9999-01-01 to designate the contract is for an indefinite period.

SELECT 
    *
FROM
    departments;

Insert into dept_emp
(
	emp_no,
    dept_no,
    from_date,
    to_date
) VALUES
(
	999903,
    'd005',
    '1997-10-01',
    '9999-01-01'
);

