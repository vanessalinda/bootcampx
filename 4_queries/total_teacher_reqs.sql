-- SELECT count(*) as total_assistances, name
-- FROM teachers
-- JOIN assistance_requests ON teachers.id = teacher_id
-- GROUP BY name
-- HAVING name = 'Waylon Boehm';

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;