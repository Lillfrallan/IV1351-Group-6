SELECT 
    i.id AS instructor_id,
    CONCAT(i.first_name, ' ', i.last_name) AS instructor_name,
    COUNT(l.id) AS total_lessons
FROM instructor i
JOIN lesson l ON i.id = l.instructor_id
WHERE 
    EXTRACT(MONTH FROM l.date) = EXTRACT(MONTH FROM CURRENT_DATE) AND 
    EXTRACT(YEAR FROM l.date) = EXTRACT(YEAR FROM CURRENT_DATE)
GROUP BY i.id, i.first_name, i.last_name
HAVING COUNT(l.id) > 10 -- Replace 10 with the desired lesson threshold
ORDER BY total_lessons DESC;