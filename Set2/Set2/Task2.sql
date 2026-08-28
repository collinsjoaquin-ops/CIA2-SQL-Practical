-- Task 2: Grouping Your Data

-- Average marks per course
SELECT course_id, AVG(marks) AS avg_marks
FROM students
GROUP BY course_id;

-- Number of students enrolled in each course
SELECT course_id, COUNT(*) AS num_students
FROM students
GROUP BY course_id;
