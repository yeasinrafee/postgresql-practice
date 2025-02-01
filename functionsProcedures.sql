

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
    SELECT count(*) FROM employees;
$$;

SELECT emp_count();

CREATE OR REPLACE FUNCTION delete_emp_by_id(p_emp_id INT)
RETURNS VOID
LANGUAGE SQL
AS
$$
    DELETE FROM employees WHERE employee_id = p_emp_id;
$$

SELECT delete_emp_by_id(29);