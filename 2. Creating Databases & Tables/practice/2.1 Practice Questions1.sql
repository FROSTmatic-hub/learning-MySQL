--- Q1. Write a query to show all databases on the server.
SHOW DATABASES;

--- Q2. Create a database named school.
CREATE DATABASE school;

--- Q3. Select school as the database to use.
USE school;

--- Q4. Show all tables in the selected database.
SHOW TABLES;

-- Q5. Create a table named students with:
--     - student_id as an integer
--     - first_name as a varchar
--     - last_name as a varchar
--     - age as an integer
CREATE TABLE students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT
);

--- Q6. Describe the students table
DESC students;

-- Q7. Create a table named courses with:
-- - course_id as an integer
-- - course_name as a varchar
-- - teacher_name as a varchar
CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(50),
    teacher_name VARCHAR(50)
);

--- Q8. Describe the courses table.
DESC courses;

--- Q9. Create a database named library
CREATE DATABASE library;

--- Q10. Switch to the library database.
USE library;

-- Q11. Create a table named books with:
-- - book_id as an integer
-- - title as a varchar
-- - author as a varchar
-- - genre as a varchar
CREATE TABLE books (
    book_id INT,
    title VARCHAR(50),
    author VARCHAR(50),
    genre VARCHAR(50),
);

--- Q12. Describe the books table
DESC books;

--- Q13 Drop the courses table.
DROP TABLE courses;

---Q14. Show all tables in the currently selected database.
SHOW TABLES;

---Q15. Drop the library database
DROP DATABASE library;

---Q16. Show all databases again.
SHOW DATABASES;

---Q17. Drop the students table.
DROP TABLE students;

--- Q18. Drop the school database.
DROP DATABASE school;

