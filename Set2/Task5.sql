-- Task 5: Table Joins
 
-- INNER JOIN
SELECT s.student_name, c.course_name, s.marks
FROM students s
INNER JOIN courses c ON s.course_id = c.course_id;
 
-- LEFT JOIN (all courses, including ones with no students)
SELECT c.course_name, s.student_name
FROM courses c
LEFT JOIN students s ON c.course_id = s.course_id;
 
