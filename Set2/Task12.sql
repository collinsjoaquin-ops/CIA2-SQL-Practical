-- Task 12: The COMMIT and ROLLBACK Commands
 
-- Demonstrate ROLLBACK
START TRANSACTION;
UPDATE students SET marks = 100 WHERE student_id = 1;
UPDATE students SET marks = 100 WHERE student_id = 3;
ROLLBACK;
 
-- Verify unchanged
SELECT student_id, marks FROM students WHERE student_id IN (1, 3);
 
-- Repeat updates in a new transaction and COMMIT
START TRANSACTION;
UPDATE students SET marks = 95 WHERE student_id = 1;
UPDATE students SET marks = 80 WHERE student_id = 3;
COMMIT;
