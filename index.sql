drop database if exists serajdb;
create database serajdb;
use serajdb;
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100),
    phone VARCHAR(15)
);
CREATE INDEX idx_email ON students(email);
SELECT * FROM students 
WHERE email = 'farhad@gmail.com';
