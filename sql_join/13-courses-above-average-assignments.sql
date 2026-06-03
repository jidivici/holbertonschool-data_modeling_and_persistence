SELECT c.title AS course_title
FROM courses c
JOIN assignments a on c.id = a.course_id
GROUP BY c.title
HAVING COUNT(a.id) > (
    SELECT AVG(assigment_count)
    FROM (
         SELECT COUNT(*) AS assigment_count
         FROM assignments
         GROUP BY course_id
         ) AS sub
)
ORDER BY course_title ASC