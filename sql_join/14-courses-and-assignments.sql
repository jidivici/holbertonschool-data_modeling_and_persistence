SELECT
    c.title AS course_title,
    a.title AS assignment_title
FROM courses c
LEFT JOIN main.assignments a on c.id = a.course_id
ORDER BY c.title ASC, a.title ASC
