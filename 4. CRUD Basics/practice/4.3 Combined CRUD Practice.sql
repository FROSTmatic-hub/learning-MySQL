-- Combined CRUD challenge: community_library
-- Create a database named community_library, select it, and create a table named books with:
-- - book_id: integer, primary key, auto-increment
-- - title: varchar, required
-- - author: varchar, required
-- - genre: varchar, required
-- - published_year: integer, nullable
-- - copies_available: integer, required, with a default value of 1
-- Then complete these tasks:
-- 1. Insert one book, letting MySQL generate its ID and use the default for copies_available.
-- 2. Insert at least four more books in a single statement. Include one NULL published year and explicitly set the copies for each book.
-- 3. Display all books.
-- 4. Display only the titles and authors of books in the Mystery genre.
-- 5. Update the available copies for one book by matching its book_id.
-- 6. Update the genre of one book by matching its title.
-- 7. Display all books to confirm the updates.
-- 8. Delete one book by matching its book_id.
-- 9. Display all books again to confirm the deletion.
-- 10. Try inserting a book without a title. Observe the result, then comment out that statement.

CREATE DATABASE community_library;
USE community_library;
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    author VARCHAR(50) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    published_year INT,
    copies_available INT NOT NULL DEFAULT 1
);
INSERT INTO books (title, author, genre, published_year) VALUES ('The Shadow of the Wind', 'Carlos Ruiz', 'Mystery', 2001);
INSERT INTO books (title, author, genre, published_year, copies_available)
VALUES ('Project Hail Mary', 'Andy Wier', 'Science Fiction', 2021, 6),
    ('Circe', 'Madeline Miller', 'Fantasy', 2018, 0),
    ('The Dispossessed', 'Ursula Le Guin', 'Science Fiction', NULL, 11),
    ('Pachinko', 'Min Jin Lee', 'Historical Fiction', 2017, 13);
SELECT * FROM books;
SELECT title, author FROM books WHERE genre = 'Mystery';
UPDATE books SET copies_available = 3 WHERE book_id = 1;
UPDATE books SET genre = 'Mystery/Fiction' WHERE title = 'The Shadow of the Wind';
SELECT * FROM books;
DELETE FROM books WHERE book_id = 2;
INSERT INTO books (author, genre, published_year) VALUES('Callen Grey', 'Action', 2018); -- MySQL Error (1364): Field 'title' doesn't have a default value 
