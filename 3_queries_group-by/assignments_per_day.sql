SELECT day, count(*) as total_assignments
FROM assignments
GROUP by day
ORDER by day;