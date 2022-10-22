SELECT cohorts.name as name, 
AVG(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students on students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;