-- Task 8: The EXISTS Clause
 
-- Courses that have at least one enrolled student
SELECT course_name
FROM courses c
WHERE EXISTS (
    SELECT 1 FROM students s WHERE s.course_id = c.course_id
);
 
-- Courses with no enrolled students
SELECT course_name
FROM courses c
WHERE NOT EXISTS (
    SELECT 1 FROM students s WHERE s.course_id = c.course_id
);
