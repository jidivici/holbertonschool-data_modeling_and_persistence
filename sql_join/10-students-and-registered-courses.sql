SELECT s.name AS student_name, c.title AS course_title
FROM registrations
JOIN courses c ON c.id = registrations.course_id
JOIN students s ON s.id = registrations.student_id
ORDER BY student_name ASC, course_title ASC;