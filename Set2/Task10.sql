-- Task 10: The INSERT, UPDATE, DELETE Statements
 
INSERT INTO students (student_id, student_name, city, course_id, marks)
VALUES (11, 'Rohit', 'Hyderabad', 103, 81);
INSERT INTO students (student_id, student_name, city, course_id, marks)
VALUES (12, 'Neha', 'Pune', 104, 69);
 
UPDATE students
SET marks = 88
WHERE student_id = 11;
 
DELETE FROM students
WHERE student_id = 12;
