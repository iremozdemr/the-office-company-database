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

CREATE TABLE client(
  client_id INT,
  client_name VARCHAR(40),
  branch_id INT,

  PRIMARY KEY(client_id)
);

ALTER TABLE client
ADD FOREIGN KEY(branch_id) 
REFERENCES branch(branch_id) 
ON DELETE SET NULL;