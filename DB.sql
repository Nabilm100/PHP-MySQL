-- Create the BookStore database
CREATE DATABASE IF NOT EXISTS BookStore;

-- Switch to the BookStore database
USE BookStore;

-- Create the Authors table
CREATE TABLE IF NOT EXISTS Authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    nationality VARCHAR(100) NOT NULL,
    UNIQUE (name)
);

-- Create the Books table
CREATE TABLE IF NOT EXISTS Books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    publish_date DATE NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors(id)
);
