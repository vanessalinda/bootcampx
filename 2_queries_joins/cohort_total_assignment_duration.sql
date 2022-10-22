SELECT SUM(duration) as total_duration
FROM assignment_submissions 
JOIN students on students.id = student_id
WHERE cohorts.name = 'Ibrahim Schimmel';