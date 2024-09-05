SET FOREIGN_KEY_CHECKS = 0;
drop table if exists employee;
drop table if exists branch;
drop table if exists client;
drop table if exists works_with;
drop table if exists branch_supplier;
SET FOREIGN_KEY_CHECKS = 1;

DESCRIBE employee;
DESCRIBE branch;
DESCRIBE client;
DESCRIBE works_with;
DESCRIBE branch_supplier;

CREATE TABLE employee(
  employee_id INT,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  birth_day DATE,
  sex VARCHAR(1),
  salary INT,
  supervisor_id INT,
  branch_id INT,

  PRIMARY KEY(employee_id)
);

ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

ALTER TABLE employee
ADD FOREIGN KEY(supervisor_id)
REFERENCES employee(employee_id)
ON DELETE SET NULL;