

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


CREATE Procedure remove_emp(p_emp_id int)
LANGUAGE plpgsql
AS
$$
    DECLARE
    test_var INT 
    BEGIN
        SELECT employee_id INTO test_var from  employees WHERE employees_id = p_emp_id;
        DELETE FROM employees WHERE employee_id = test_var;

        RAISE NOTICE 'Employee removed successfully!'
    END
$$;

CALL remove_emp(25);