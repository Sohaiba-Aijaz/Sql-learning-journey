-- Create database
CREATE DATABASE IF NOT EXISTS library;
USE library;

-- Create table
CREATE TABLE books(
  ID INT AUTO_INCREMENT PRIMARY KEY,
  BOOK_NAME VARCHAR(50) NOT NULL,
  AUTHOR_NAME VARCHAR(50),
  GENRE ENUM('fiction','reality_based','science'),
  PRICE DECIMAL(10,2),
  AVAILABLE_COPIES INT DEFAULT 1
);

-- Insert first book
INSERT INTO books (BOOK_NAME, AUTHOR_NAME, GENRE, PRICE, AVAILABLE_COPIES)
VALUES ('Jannat Ke Pattay', 'Nimra Ahmed', 'fiction', 850.00, 1);

-- Insert more books
INSERT INTO books (BOOK_NAME, AUTHOR_NAME, GENRE, PRICE, AVAILABLE_COPIES)
VALUES 
('Peer e Kamil', 'Umera Ahmed', 'reality_based', 500, 3),
('Aur Yusra', 'Rabia Rajpoot', 'reality_based', 1500, 2),
('Haalim', 'Farhat Ishtiaq', 'science', 2000, 2);

-- View all books
SELECT * FROM books;
