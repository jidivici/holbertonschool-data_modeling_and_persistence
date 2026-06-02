SELECT author, COUNT(title) AS number_books_by_authors
FROM books
GROUP BY author;
