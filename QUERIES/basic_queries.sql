--List all students
SELECT * FROM students;

--List all subjects
SELECT * FROM subjects

-- List all students and their scores
SELECT s.name, sub.subject_name, sc.score, sc.term
FROM scores sc
JOIN students s ON s.student_id = sc.student_id
JOIN subjects sub ON sub.subject_id = sc.subject_id;

-- Find students who scored 50 or below 50 in any subject
SELECT s.name, sub.subject_name, sc.score
FROM scores sc
JOIN students s ON s.student_id = sc.student_id
JOIN subjects sub ON sub.subject_id = sc.subject_id
WHERE sc.score <= 50;
