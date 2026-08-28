-- Task 4: Table Aliases

SELECT s.student_name, c.course_name, s.marks
FROM students s, courses c
WHERE s.course_id = c.course_id;
