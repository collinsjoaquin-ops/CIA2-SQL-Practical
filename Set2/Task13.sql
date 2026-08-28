-- Task 13: Creating Tables, Creating and Using Views
 
CREATE VIEW top_scorers AS
SELECT student_id, student_name, course_id, marks
FROM students
WHERE marks > 80;
 
SELECT * FROM top_scorers;
 
