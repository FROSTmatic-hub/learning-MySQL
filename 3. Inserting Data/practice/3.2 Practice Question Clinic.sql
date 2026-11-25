-- Practice: clinic database
-- Create a database named clinic, select it, and create a table named patients with:
-- - patient_id: integer, primary key, auto-increment
-- - first_name: varchar, required
-- - last_name: varchar, required
-- - phone: varchar, nullable
-- - status: varchar, required, with a default value of 'New'
-- Then:
-- 1. Insert one patient with a phone number, letting MySQL generate the ID and use the default status.
-- 2. Insert three patients in one statement. Leave the phone number NULL for one patient and provide a status for each.
-- 3. Display all patients.
-- 4. Insert a patient using only the first and last names.
-- 5. Display all patients again.
-- 6. Try inserting a patient without a first name. Observe the result, then comment out that statement.

CREATE DATABASE clinic;
USE clinic;

CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(50),
    status VARCHAR(50) NOT NULL DEFAULT 'New'
);

INSERT INTO patients (first_name, last_name, phone) VALUES ('Smith','Tail','988349924');
INSERT INTO patients (first_name, last_name, phone, status)
VALUES ('Dake', 'Gaurd', NULL, 'Admitted'),
    ('Sing', 'Khan', '65654534', 'New'),
    ('Furi', 'Kun', '455432434', 'Deceased');

SELECT * FROM patients;

INSERT INTO patients (first_name, last_name) VALUES ('John', 'Cena');
SELECT * FROM patients;

INSERT INTO patients (last_name) VALUES ('Bate'); -- Got an error saying that first_name does not have default value.