SELECT * FROM employees 
WHERE salary > (SELECT max(salary) 
                FROM employees 
                WHERE department_name = 'HR');

SELECT * FROM
    (SELECT department_name, sum(salary) from employees GROUP BY department_name) as sum_dept_salary;