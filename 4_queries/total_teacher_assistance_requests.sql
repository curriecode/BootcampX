SELECT teachers.name, count(assistance_requests.*) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm'