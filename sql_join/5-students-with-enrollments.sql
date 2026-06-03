SELECT students.name AS student_name
FROM students
WHERE students.id IN (
    SELECT enrollments.student_id
    FROM enrollments
);
