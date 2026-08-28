-- Task 3: The HAVING Clause
 
-- Courses having more than 5 students enrolled
SELECT course_id, COUNT(*) AS num_students
FROM students
GROUP BY course_id
HAVING COUNT(*) > 5;
 
-- Courses where average marks exceed 70
SELECT course_id, AVG(marks) AS avg_marks
FROM students
GROUP BY course_id
HAVING AVG(marks) > 70;
