# INSERT INTO SELECT
# Inserting Data INTO a New Table

SELECT 
    *
FROM
    DEPARTMENTS
LIMIT 10;


CREATE TABLE departments_dup
(
	dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

# It is still an empty table
SELECT 
    *
FROM
    departments_dup;

# To insert data into the table
INSERT INTO departments_dup
(
	dept_no,
    dept_name
)
SELECT 
    *
FROM
    departments;
    
    
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no; 

# Task:
# Create a new department called "Business Analysis". Register it under number "d010".

insert into departments 
(
    dept_no,
    dept_name
) VALUES
(
	'd010',
    "Business Analysis"
    );
