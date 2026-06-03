SELECT authors.name, books.title AS author_name
FROM authors
LEFT JOIN books
ON books.author_id = authors.id
ORDER BY authors.name, books.title;
