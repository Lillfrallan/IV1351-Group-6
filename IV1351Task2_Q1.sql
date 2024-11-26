SELECT 
    EXTRACT(MONTH FROM l.date) AS month,
    COUNT(il.lesson_id) AS individual_lessons,
    COUNT(gl.lesson_id) AS group_lessons,
    COUNT(el.lesson_id) AS ensemble_lessons
FROM lesson l
LEFT JOIN individual_lesson il ON l.lesson_id = il.lesson_id
LEFT JOIN group_lesson gl ON l.lesson_id = gl.lesson_id
LEFT JOIN ensemble_lesson el ON l.lesson_id = el.lesson_id
WHERE EXTRACT(YEAR FROM l.date) = 2024 -- Replace 2024 with the desired year
GROUP BY EXTRACT(MONTH FROM l.date)
ORDER BY month;
