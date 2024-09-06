SELECT employee.employee_id,employee.first_name,branch.branch_name
FROM employee
JOIN branch
ON employee.employee_id = branch.manager_id;
-- find all branches and the names of their managers

SELECT employee.employee_id,employee.first_name,branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.employee_id = branch.manager_id;
-- LEFT JOIN:
-- employee'deki null olan değerler de ekrana yazıldı

SELECT employee.employee_id,employee.first_name,branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.employee_id = branch.manager_id;
-- RIGHT JOIN:
-- branch'deki null olan değerler de ekrana yazıldı