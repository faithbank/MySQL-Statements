### UNION vs UNION ALL
# combines a few SELECT statements in a single output.

-- create employee_dup table
DROP TABLE IF EXISTS employees_dup;
CREATE TABLE employees_dup(
	emp_no int(11),
    birth_date date,
    first_name varchar(14),
    last_name varchar(16),
    gender enum('M', 'F'),
    hire_date date
);

-- duplicate the struvture of the employees table
INSERT INTO employees_dup
SELECT
	e.*
FROM
	employees e
LIMIT 20;

-- check
SELECT
	*
FROM
	employees_dup
;

-- insert a duplicate of the first row
INSERT INTO employees_dup VALUES
('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

### UNION ALL
-- we have to select the same number of columns from each table
-- the columns should have the same name, be in the same order, contain related data types.

SELECT
	e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
	employees_dup e 
WHERE 
	e.emp_no = 10001
UNION ALL SELECT
	NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m. from_date
FROM
	dept_manager m;