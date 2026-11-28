-- Practice: garden_shop database
-- Create a database named garden_shop, select it, and create a table named plants with:
-- - plant_id: integer, primary key, auto-increment
-- - plant_name: varchar, required
-- - category: varchar, required
-- - price: integer
-- - in_stock: integer
-- Insert at least five plants with different categories and prices. Include at least two plants in the same category.

-- Then write SQL queries to:
-- 1. Display the plant names and prices for all plants.
-- 2. Display all columns for plants in the Succulents category.
-- 3. Update the price of one plant by matching its plant_name in a WHERE clause.
-- 4. Set in_stock to 0 for one plant by matching its plant_id.
-- 5. Display all columns to confirm your updates.
CREATE DATABASE garden_shop;
USE garden_shop;
CREATE TABLE plants (
    plant_id INT AUTO_INCREMENT PRIMARY KEY,
    plant_name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price INT,
    in_stock INT
);
INSERT INTO plants (plant_name, category, price, in_stock)
VALUES ('Jade Plant', 'Succulents', 130, 1),
    ('Aloe Vera', 'Succulents', 100, 1),
    ('Peace Lily', 'Flowering Plant', 300, 0),
    ('Boston Fern', 'Ferns', 400, 1),
    ('Areca Palm', 'Palms', 550, 0);

SELECT plant_name, price FROM plants;
SELECT * FROM plants WHERE category = 'Succulents';
UPDATE plants SET price = 350 WHERE plant_name = 'Peace Lily';
UPDATE plants SET in_stock = 0 WHERE plant_id = 1;
SELECT * FROM plants;