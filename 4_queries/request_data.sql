-- SELECT teachers.name as teacher, 
-- students.name as student, 
-- assignments.name as assignment, 
-- completed_at - started_at as duration
-- FROM teachers
-- JOIN assistance_requests ON assistance_requests.id = teacher_id
-- JOIN students ON students.id = student_id
-- JOIN assignments ON assignments.id = assignment_id
-- GROUP BY assistance_requests.id
-- ORDER BY completed_at - started_at;
SELECT teachers.name as teacher,
students.name as student,
assignments.name as assignment,
(completed_at - started_at) as duration
FROM assistance_requests
JOIN teachers on teachers.id = teacher_id
JOIN students on students.id = student_id
JOIN assignments on assignments.id = assignment_id
ORDER BY duration;
