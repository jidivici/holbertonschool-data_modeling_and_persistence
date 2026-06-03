SELECT students.name, courses.title
FROM enrollments
JOIN students
    ON enrollments.student_id = students.id
JOIN courses
    ON enrollments.course_id = courses.id;
