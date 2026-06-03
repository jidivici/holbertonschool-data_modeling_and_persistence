SELECT DISTINCT s.name AS student_name
FROM students s
JOIN registrations r on s.id = r.student_id
ORDER BY s.name ASC;