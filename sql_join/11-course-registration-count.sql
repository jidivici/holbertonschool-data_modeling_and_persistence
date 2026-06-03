SELECT c.title AS course_title,
       COUNT(r.student_id) AS number_of_registrations
FROM courses c
LEFT JOIN registrations r ON c.id = r.course_id
GROUP BY c.title
ORDER BY number_of_registrations DESC, course_title ASC;
