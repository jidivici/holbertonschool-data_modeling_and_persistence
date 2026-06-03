SELECT students.name, courses.title
FROM enrollments
INNER JOIN students
    ON enrollments.student_id = students.id
INNER JOIN courses
    ON enrollments.course_id = courses.id
ORDER BY students.name, courses.title;
