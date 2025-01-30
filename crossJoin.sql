CREATE TABLE employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments(
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees
    VALUES(1, 'Yeasin', 101),(1, 'Rafee', 102);

INSERT INTO departments(dept_id, dept_name)
    VALUES(101, 'IT'), (102, 'Marketing');

SELECT * from employees
CROSS JOIN departments;

SELECT * FROM employees
NATURAL JOIN departments;

SELECT * FROM employees;
SELECT * FROM departments;