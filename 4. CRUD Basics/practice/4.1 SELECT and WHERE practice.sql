-- Practice: movies database
-- Create a database named movies_db, select it, then create a table named movies with:
-- - movie_id: integer, primary key, auto-increment
-- - title: varchar, required
-- - genre: varchar, required
-- - release_year: integer
-- - rating: integer, nullable
-- Insert at least five movies with different genres, years, and ratings. Include one movie with a NULL rating.

-- Then write queries to:
-- 1. Display only the title and genre of every movie.
-- 2. Display all columns for movies released after 2015.
-- 3. Display the title and rating for movies with a rating of at least 8.
-- 4. Display all columns for movies in the Action genre.
-- 5. Display the title and release_year for movies released in 2000 or earlier.
CREATE DATABASE movies_db;
USE movies_db;
CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    release_year INT,
    rating INT
);
INSERT INTO movies (title, genre, release_year, rating)
VALUES ('Terminator', 'Action', 2017, 7),
    ('Jumanji', 'Adventure', 2020, 8),
    ('Death Race', 'Action', 2018, 6),
    ('Terminator 2', 'Action', 2022, NULL),
    ('Disney Princess', 'Animated', 2024, 9),
    ('The Boss Man', 'Animated', 2026, 7);
 
SELECT title, genre FROM movies;
SELECT * FROM movies WHERE release_year > 2015;
SELECT title, rating FROM movies WHERE rating >= 8;
SELECT * FROM movies WHERE genre = 'Action';
SELECT title, release_year FROM movies WHERE release_year <= 2000;
