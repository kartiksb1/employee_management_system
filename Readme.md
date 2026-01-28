# Employee Management System

## Overview

This project implements an employee management system using MySQL 8.
It manages employees, departments, and roles while ensuring data integrity, proper normalization, and efficient querying.

## Database Design

* **department**: Stores department details
* **role**: Stores role information and salary
* **employee**: Stores employee details and references department and role

The design follows normalization principles to avoid data redundancy and update anomalies.

## Normalization

The database follows 1NF, 2NF, and 3NF by ensuring atomic values, no partial dependencies, and no transitive dependencies.
Salary is stored in the role table and department details in the department table, resulting in a normalized and maintainable schema.

## Constraints

* Primary key constraints ensure uniqueness of records
* Foreign key constraints enforce valid department and role references
* NOT NULL constraints ensure mandatory fields are populated
* UNIQUE constraint on role_name prevents duplicate role entries

## Indexing

* **idx_employee_department**: Optimizes employee lookup by department
* **idx_employee_role**: Optimizes joins and role-based filtering

**Trade-off:** Indexes improve read and join performance but slightly slow down insert and update operations.

## Queries

* JOIN queries retrieve employee details along with department and role information
* Aggregation queries count employees per department
* Subqueries identify departments with average salary above the company average

## Technologies Used

* MySQL 8
* SQL
* MySQL Workbench
* Visual Studio Code
* Git & GitHub

## How to Execute the SQL Files

### Steps to Execute

1. Clone the repository or download it as a ZIP file.
2. Open **MySQL Workbench** and connect to your local MySQL server.
3. From the top menu, select **File → Open SQL Script**.
4. Open `schema.sql` and click the **Execute (⚡)** button.

   * This creates the database, tables, constraints, and inserts sample data.
5. Open `queries.sql` and execute it to view query results.

## Git Practices Followed

* Schema created incrementally
* Meaningful commit messages
* No single large dump commit
* Clean and readable repository history

---
