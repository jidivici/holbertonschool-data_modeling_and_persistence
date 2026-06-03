SELECT c.title AS course_title, i.name AS instructor_name
FROM courses c
JOIN instructors i on c.instructor_id = i.id
