-- Create a database called company, then use it to create a table called employees with these columns:
-- - employee_id as an integer
-- - first_name as a varchar
-- - last_name as a varchar
-- - job_title as a varchar
-- - department as a varchar
-- Then describe the table and show all databases.

CREATE DATABASE company;
USE company;
CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(50),
    department VARCHAR(50)
);

DESC employees;
SHOW databases;
