SELECT students.name as student, AVG(assignment_submissions.duration) as duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY duration DESC;