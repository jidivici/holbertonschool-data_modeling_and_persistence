SELECT i.name AS instructor_name, c.title AS course_title
FROM instructors i
LEFT JOIN courses c ON c.instructor_id = i.id
ORDER BY i.name ASC, c.title ASC;
