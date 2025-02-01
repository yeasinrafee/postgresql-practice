EXPLAIN ANALYSE
SELECT * FROM employees WHERE last_name = 'Rafee';

CREATE INDEX idx_employee_last_name
on employees (last_name);