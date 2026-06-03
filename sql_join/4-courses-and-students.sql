SELECT courses.title, students.name
FROM courses
LEFT JOIN enrollments
    ON enrollments.course_id = courses.id
LEFT JOIN students
    ON enrollments.student_id = students.id
ORDER BY courses.title, students.name;
