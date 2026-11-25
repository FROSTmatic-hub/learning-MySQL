-- Practice: bookstore database
-- 1. Create a database named bookstore, then select it.
-- 2. Create a table named books with these columns:
--    - book_id: integer, primary key, auto-increment
--    - title: varchar, required
--    - author: varchar, required
--    - category: varchar, nullable
--    - price: integer, with a default value of 0
-- 3. Insert one book, providing its title, author, and category. Let MySQL generate the book_id and use the default for price.
-- 4. Insert three more books in one statement. Include a NULL category for one book, and provide a price for each.
-- 5. Display all rows in books.
-- 6. Insert a book with only its title and author. Let the database fill in the remaining columns where allowed.
-- 7. Display all rows again.
-- 8. Try inserting a row without a title. Observe what happens, then remove or comment out that statement so it won’t interrupt the rest of your script.

-- Q1
CREATE DATABASE bookstore;
USE bookstore;
-- Q2
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    author VARCHAR(50) NOT NULL,
    category VARCHAR(50),
    price INT DEFAULT 0
);
-- Q3
INSERT INTO books (title, author, category)
VALUES ('Kite Runner', 'Khalid', 'Fictional');
-- Q4
INSERT INTO books (title, author, category, price)
VALUES ('After Dark', 'Murakami', NULL, 300),
    ('Bad Weather', 'Grey', 'Crime', 450),
    ('Sleepy Head', 'Shaafi', 'Fictional', 250);
-- Q5
SELECT * FROM books;
--  Q6
INSERT INTO books (title, author)
VALUES ('Karma Raged', 'Gary');
-- Q7
SELECT * FROM books;
-- Q8
INSERT INTO books (author) VALUES ('Hamid');
-- Got an error saying that 'title' doesnt not have a default value. It is a value that cannot be left NULL and it needs a default value to proceed.


