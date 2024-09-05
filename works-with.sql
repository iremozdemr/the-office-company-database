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

CREATE TABLE works_with(
  employee_id INT,
  client_id INT,
  total_sales INT,

  PRIMARY KEY(employee_id,client_id)
);

ALTER TABLE works_with
ADD FOREIGN KEY(employee_id) 
REFERENCES employee(employee_id) 
ON DELETE CASCADE;

ALTER TABLE works_with
ADD FOREIGN KEY(client_id) 
REFERENCES client(client_id) 
ON DELETE CASCADE;