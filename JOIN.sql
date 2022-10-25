# JOIN
/* If you currently have the departments_dup table set up, use DROP COLUMN to remove the
 dept_manager column from the departments_dup table. Then, use CHANGE COLUMN to 
 change the dept_no and dept_name columns to NULL.*/
ALTER TABLE departments_dup
MODIFY
	dept_no char(4) NULL; 
ALTER TABLE departments_dup
MODIFY   
    dept_name VARCHAR (40) NULL;

INSERT INTO departments_dup (dept_no, dept_name) SELECT * FROM departments;
SELECT * FROM departments_dup;

/*Then, insert a record whose department name is Public Relations. Delete the record(s) 
related to department number two. Insert two new records in the departments_dup table. Let 
their values in the dept_no column be d010 and d011.*/
INSERT INTO departments_dup
(dept_name) VALUES ('Public Relations');

INSERT INTO departments_dup
(dept_no) VALUES ('d010');

INSERT INTO departments_dup
(dept_no) VALUES ('d011');

# Task 2: 
DROP TABLES IF EXISTS dept_manager_dup;
CREATE TABLE dept_manager_dup(
	emp_no int(11) NOT NULL,
    dept_no char(4) NULL,
    from_date date NOT NULL,
    to_date date NULL
);

INSERT INTO dept_manager_dup 
SELECT * from dept_manager;

INSERT INTO dept_manager_dup
(emp_no, from_date)
VALUES	(999904, '2017-01-01'),
		(999905, '2017-01-01'),
		(999906, '2017-01-01'),
        (999907, '2017-01-01');
        
DELETE FROM dept_manager_dup
WHERE
	dept_no = 'd001';
    
SELECT * FROM dept_manager_dup;
    
INSERT INTO departments_dup (dept_name)
VALUES						('Public Relations');

DELETE FROM departments_dup
WHERE
	dept_no = 'd002';