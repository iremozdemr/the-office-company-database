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

CREATE TABLE branch_supplier(
  branch_id INT,
  supplier_name VARCHAR(40),
  supple_type VARCHAR(40),

  PRIMARY KEY(branch_id,supplier_name)
);

ALTER TABLE branch_supplier
ADD FOREIGN KEY(branch_id) 
REFERENCES branch(branch_id) 
ON DELETE CASCADE;