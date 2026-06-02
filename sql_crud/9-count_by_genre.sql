SELECT genre, COUNT(*) AS number_of_books
FROM books
GROUP BY genre;
