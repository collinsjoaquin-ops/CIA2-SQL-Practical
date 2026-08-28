-- Task 15: Implementing Triggers
 
CREATE TABLE student_audit (
    audit_id    INT AUTO_INCREMENT PRIMARY KEY,
    student_id  INT,
    deleted_at  DATETIME
);
 
DELIMITER //
CREATE TRIGGER before_student_delete
BEFORE DELETE ON students
FOR EACH ROW
BEGIN
    INSERT INTO student_audit (student_id, deleted_at)
    VALUES (OLD.student_id, NOW());
END //
DELIMITER ;
 
DELETE FROM students WHERE student_id = 13;
 
SELECT * FROM student_audit;
