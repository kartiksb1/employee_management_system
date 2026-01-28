-- creating a new database
CREATE IF NOT EXISTDARA DATABASE employee_management_system;
-- best practice 


-- marking the created database as primary to use and write queries 
USE employee_management_system;

-- create the employee table
CREATE TABLE employee 
(employee_id INT PRIMARY KEY,
employee_name VARCHAR(20) NOT NULL,
role_id VARCHAR(20) NOT NULL,
department_id INT NOT NULL,
CONSTRAINT fk_employee_department FOREIGN KEY REFERENCES department(department_id),
CONSTRAINT fk_employee_role FOREIGN KEY REFERENCES role(role_id));

-- create the department table
CREATE TABLE department
(department_id INT PRIMARY KEY,
department_name VARCHAR(20) NOT NULL);

-- create the role table
CREATE TABLE role
(role_id INT PRIMARY KEY,
salary INT PRIMARY KEY);