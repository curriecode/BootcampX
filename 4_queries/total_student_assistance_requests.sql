SELECT count(assistance_requests.*) as total_assistances, students.name
FROM students
JOIN assistance_requests ON student_id = students.id
GROUP BY students.name
HAVING students.name = 'Elliot Dickinson';