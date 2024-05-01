-- SQL Queries
-- 1. Retrieve the names of all books published after the year 2020
SELECT title
FROM Books
WHERE publish_date > '2020-01-01';

-- 2. Retrieve the names and nationalities of all authors who wrote a book about science
SELECT Authors.name, Authors.nationality
FROM Authors
JOIN Books ON Authors.id = Books.author_id
WHERE Books.title LIKE '%science%';

-- 3. Retrieve the names of books, their publish dates, and the names of their respective authors, ordering the books by publish date in descending order
SELECT Books.title, Books.publish_date, Authors.name AS author_name
FROM Books
JOIN Authors ON Books.author_id = Authors.id
ORDER BY Books.publish_date DESC;