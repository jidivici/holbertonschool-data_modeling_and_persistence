SELECT s.name, c.title
FROM registrations
JOIN courses c on c.id = registrations.course_id
JOIN students s on s.id = registrations.student_id