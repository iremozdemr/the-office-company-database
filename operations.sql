SELECT * FROM employee;
SELECT * FROM branch;
SELECT * FROM client;
SELECT * FROM works_with;
SELECT * FROM branch_supplier;

SELECT * 
FROM employee
ORDER BY salary;
-- find all employees ordered by salary

SELECT * 
FROM employee
ORDER BY sex,first_name,last_name;
-- find all employees ordered by sex then name

SELECT * 
FROM employee
LIMIT 5;
-- find the first 5 employees in the table

SELECT first_name,last_name 
FROM employee;
-- find the first names and last names of all employees

SELECT first_name AS forename,last_name AS surname 
FROM employee;
-- find the forenames and surnames of all employees

SELECT DISTINCT sex
FROM employee;
-- find out all the different genders

SELECT COUNT(employee_id)
FROM employee;
-- find the number of employees

SELECT COUNT(employee_id)
FROM employee
WHERE sex = "F" AND birth_day >= "1971-01-01";
--- find the number of female employees born after 1970

SELECT AVG(salary)
FROM employee;
--- find the average of all employee's salaries

SELECT SUM(salary)
FROM employee;
--- find the sum of all employee's salaries

SELECT COUNT(sex)
FROM employee
WHERE sex = "F";
--- find out how many females there are

SELECT COUNT(sex)
FROM employee
WHERE sex = "M";
--- find out how many males there are

SELECT COUNT(sex)
FROM employee
GROUP BY sex;

SELECT COUNT(sex),sex
FROM employee
GROUP BY sex;

SELECT SUM(total_sales),employee_id
FROM works_with
GROUP BY employee_id;
-- find the total sales of each salesman