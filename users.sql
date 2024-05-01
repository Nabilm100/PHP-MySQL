-- Create the database
CREATE DATABASE IF NOT EXISTS users_database;

-- Use the newly created database
USE users_database;

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Insert some sample data into the users table
INSERT INTO users (name, email) VALUES ('nabil', 'nabil@gmail.com');
INSERT INTO users (name, email) VALUES ('youssef', 'youssef@gmail.com');
