SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch;
-- find a list of employee and branch names

SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

SELECT client_name
FROM client
UNION
SELECT supplier_name
FROM branch_supplier;
-- find a list of all clients and branch suppliers' name

SELECT client_name,branch_id
FROM client
UNION
SELECT supplier_name,branch_id
FROM branch_supplier;

SELECT client_name,client.branch_id
FROM client
UNION
SELECT supplier_name,branch_supplier.branch_id
FROM branch_supplier;

SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;
-- find a list of all money spent or earned by the company

SELECT first_name,last_name
FROM employee
UNION
SELECT branch_name
FROM branch;
-- hata verir
-- select kısımlarında aynı sayıda column seçilmelidir


SELECT first_name,last_name
FROM employee
UNION
SELECT branch_name,branch_id
FROM branch;
-- hata vermez