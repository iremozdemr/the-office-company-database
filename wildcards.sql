-- %:
-- any number of characters

-- _:
-- one character

SELECT *
FROM client
WHERE client_name LIKE "%LLC";
-- find any client's who are an LLC

SELECT *
FROM branch_supplier
WHERE supplier_name LIKE "%Label%";
-- find any branch suppliers who are in the label business

SELECT *
FROM employee
WHERE birth_day LIKE "____-02%";
-- find any employee born in february

SELECT *
FROM client
WHERE client_name LIKE "%School%";
-- find any clients who are schools