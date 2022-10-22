-- SELECT SUM(completed_at - started_at) / COUNT(cohorts.id)
-- FROM assistance_requests
-- JOIN students on students.id = student_id
-- JOIN cohorts on cohorts.id = cohort_id;

-- SELECT cohorts.name, SUM(completed_at - started_at) as total_duration
-- FROM assistance_requests
-- JOIN students on students.id = student_id
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY total_duration;

-- SELECT AVG(SUM(completed_at - started_at)) as avg_total_duration
-- FROM assistance_requests
-- JOIN students on students.id = student_id
-- JOIN cohorts on cohorts.id = cohort_id;

SELECT avg (total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations;