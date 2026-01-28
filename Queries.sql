-- join queries
-- employee table with depatment table to print employee name and their depatment names
SELECT e.employee_id, e.employee_name, d.department_name
FROM employee e
INNER JOIN department d
ON d.department_id=e.department_id;


-- List employee_name, role_name, and salary.
SELECT e.employee_name,r.role_name,r.salary
FROM employee e
INNER JOIN role r
ON e.role_id=r.role_id;

-- Show employee name, department name, and role name using multiple JOINs.

SELECT e.employee_name, d.department_name, r.role_name
FROM employee e
INNER JOIN department d
ON d.department_id=e.department_id
INNER JOIN role r
ON r.role_id=e.role_id;


-- List employees working in the Engineering department.

SELECT e.employee_name 
FROM employee e
INNER JOIN department d
ON d.department_id=e.department_id
WHERE d.department_name='Engineer';


-- Find employees whose salary is greater than 70,000.
SELECT e.employee_name 
FROM employee e
INNER JOIN role r
ON e.role_id=r.role_id
WHERE r.salary>70000;


-- List all departments and the number of employees in each department.
SELECT d.department_name,COUNT(*)
FROM department d
INNER JOIN employee e
ON d.department_id=e.department_id
GROUP BY d.department_name;


-- creating indexes on column role_id 
CREATE INDEX idx_employee_role
ON employee(role_id);

-- creating indexes on column department_id
CREATE INDEX idx_employee_department
ON employee(department_id);
