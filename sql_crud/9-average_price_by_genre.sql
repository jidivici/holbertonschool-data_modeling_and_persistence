SELECT genre, AVG(price) AS average_price_of_books_by_genre
FROM books
GROUP BY genre;
