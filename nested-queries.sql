SELECT employee.employee_id,first_name
FROM employee
WHERE employee_id IN(
    SELECT works_with.employee_id
    FROM works_with
    WHERE total_sales > 30000
);
-- find names of all employees
-- who have sold over 30,000 to a single client

SELECT client_name,branch_id
FROM client
WHERE client.branch_id IN(
    SELECT branch.branch_id
    FROM branch
    WHERE manager_id = 102
);
-- find all clients who are
-- handled by the branch that michael scott manages
-- assume you know michael's id

SELECT client_name,branch_id
FROM client
WHERE client.branch_id IN(
    SELECT branch.branch_id
    FROM branch
    WHERE manager_id = 102
)
LIMIT 1;