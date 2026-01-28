-- creating a new database
-- CREATE IF NOT EXISTDARA DATABASE employee_management_system;
-- best practice 
CREATE DATABASE IF NOT EXISTS employee_management_system;


-- marking the created database as primary to use and write queries 
USE employee_management_system;

-- create the department table
CREATE TABLE department
(department_id INT PRIMARY KEY,
department_name VARCHAR(50) NOT NULL);

-- create the role table
CREATE TABLE role
(role_id INT PRIMARY KEY,
role_name VARCHAR(50) UNIQUE,
salary INT NOT NULL);

-- create the employee table
CREATE TABLE employee 
(employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
role_id INT NOT NULL,
department_id INT NOT NULL,
CONSTRAINT fk_employee_department FOREIGN KEY (department_id) REFERENCES department(department_id),
CONSTRAINT fk_employee_role FOREIGN KEY (role_id) REFERENCES role(role_id));


-- inserting dummy data
INSERT INTO department (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Human Resources'),
(3, 'Finance'),
(4, 'Marketing');

INSERT INTO role (role_id, role_name, salary) VALUES
(101, 'Software Engineer', 75000),
(102, 'Senior Software Engineer', 95000),
(103, 'HR Manager', 60000),
(104, 'Accountant', 65000),
(105, 'Marketing Executive', 55000);

INSERT INTO employee (employee_id, employee_name, role_id, department_id) VALUES
(1, 'Kartik', 101, 1),
(2, 'Ananya', 102, 1),
(3, 'Rohit', 103, 2),
(4, 'Sneha', 104, 3),
(5, 'Amit', 105, 4);
