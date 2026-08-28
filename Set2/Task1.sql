-- Task 1: Unions and Other Multiset Consolidations

CREATE TABLE students (
    student_id   INT PRIMARY KEY,
    student_name VARCHAR(50),
    city         VARCHAR(50),
    course_id    INT,
    marks        INT
);

CREATE TABLE courses (
    course_id     INT PRIMARY KEY,
    course_name   VARCHAR(50),
    faculty_name  VARCHAR(50)
);

INSERT INTO courses (course_id, course_name, faculty_name) VALUES
(101, 'Database Systems',  'Dr. Rao'),
(102, 'Data Structures',   'Dr. Mehta'),
(103, 'Web Development',   'Dr. Iyer'),
(104, 'Machine Learning',  'Dr. Rao');

INSERT INTO students (student_id, student_name, city, course_id, marks) VALUES
(1,  'Amit',   'Bengaluru', 101, 78),
(2,  'Priya',  'Chennai',   101, 85),
(3,  'Rahul',  'Mumbai',    102, 65),
(4,  'Sneha',  'Bengaluru', 102, 90),
(5,  'Kiran',  'Delhi',     103, 72),
(6,  'Divya',  'Chennai',   103, 88),
(7,  'Arjun',  'Bengaluru', 104, 95),
(8,  'Meena',  'Mumbai',    101, 60),
(9,  'Vikram', 'Delhi',     102, 77),
(10, 'Anita',  'Chennai',   104, 82);

-- Distinct cities from students + distinct faculty names from courses (UNION)
SELECT city AS value FROM students
UNION
SELECT faculty_name AS value FROM courses;

-- Student names from two courses, keeping duplicates (UNION ALL)
SELECT student_name FROM students WHERE course_id = 101
UNION ALL
SELECT student_name FROM students WHERE course_id = 102;
