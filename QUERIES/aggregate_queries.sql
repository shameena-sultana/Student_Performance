-- Average score per subject
SELECT sub.subject_name, AVG(sc.score) AS average_score
FROM scores sc
JOIN subjects sub ON sub.subject_id = sc.subject_id
GROUP BY sub.subject_name;

-- Top scorer per subject
SELECT sub.subject_name, s.name, sc.score
FROM scores sc
JOIN students s ON s.student_id = sc.student_id
JOIN subjects sub ON sub.subject_id = sc.subject_id
WHERE (sub.subject_name, sc.score) IN (
    SELECT subject_name, MAX(score)
    FROM scores
    JOIN subjects ON scores.subject_id = subjects.subject_id
    GROUP BY subject_name
);
