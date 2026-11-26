-- Practice: petshelter database
-- Create a database named petshelter, select it, and create a table named animals with:
-- - animal_id: integer, primary key, auto-increment
-- - name: varchar, required
-- - species: varchar, required
-- - age: integer, nullable
-- - adoption_status: varchar, required, with a default value of 'Available'
-- Then:
-- 1. Insert one animal with a name, species, and age. Let MySQL generate the ID and use the default adoption status.
-- 2. Insert three animals in one statement. Leave the age NULL for one animal and provide an adoption status for each.
-- 3. Display all animals.
-- 4. Insert an animal using only its name and species.
-- 5. Display all animals again.
-- 6. Try inserting an animal without a name. Observe what happens, then comment out that statement.

CREATE DATABASE petshelter;
USE petshelter;
CREATE TABLE animals (
    animal_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    species VARCHAR(50) NOT NULL,
    age INT,
    adoption_status VARCHAR(50) NOT NULL DEFAULT 'Available'

);
INSERT INTO animals (name, age, species) VALUES ('Millow', 12, 'Cat');
INSERT INTO animals (name, species, age, adoption_status)
VALUES ('Brown', 'Dog', NULL, 'Not Available'),
    ('Furi', 'Rabbit', 9, 'Available'),
    ('Crew', 'Cat', 6, 'Not Available');

SELECT * FROM animals;
INSERT INTO animals (name, species) VALUES ('Kori', 'Hamster');
SELECT * FROM animals;

-- INSERT INTO animals(species, age) VALUES ('Cat', 10);  -- Got an error saying that name does not have a default value, so it is a required field and cannot be skipped. 

