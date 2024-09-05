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

CREATE TABLE branch(
  branch_id INT,
  branch_name VARCHAR(40),
  manager_id INT,
  manager_start_date DATE,

  PRIMARY KEY(branch_id)
);

ALTER TABLE branch
ADD FOREIGN KEY(manager_id) 
REFERENCES employee(employee_id) 
ON DELETE SET NULL;