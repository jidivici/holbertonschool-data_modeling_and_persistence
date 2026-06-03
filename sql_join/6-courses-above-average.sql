SELECT c.title AS course_title
FROM courses c
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.title
HAVING COUNT(*) > (
    SELECT AVG(course_count)
    FROM (
             SELECT COUNT(*) AS course_count
             FROM enrollments
             GROUP BY course_id
         ) AS sub
)
ORDER BY course_title ASC;
