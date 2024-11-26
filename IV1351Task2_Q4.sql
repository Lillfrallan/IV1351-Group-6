SELECT 
    el.lesson_id,
    el.genre,
    l.date,
    CASE 
        WHEN (el.max_student - COUNT(DISTINCT il.student_id)) = 0 THEN 'No Seats'
        WHEN (el.max_student - COUNT(DISTINCT il.student_id)) <= 2 THEN '1-2 Seats'
        ELSE 'Many Seats'
    END AS booking_status
FROM ensemble_lesson el
JOIN lesson l ON el.lesson_id = l.lesson_id
LEFT JOIN individual_lesson il ON l.lesson_id = il.lesson_id
WHERE l.date BETWEEN '2024-10-26' AND (CURRENT_DATE + INTERVAL '7 DAYS')
GROUP BY el.lesson_id, el.genre, l.date, el.max_student
ORDER BY el.genre, l.date;

SELECT 
    el.lesson_id,
    el.genre,
    l.date,
    CASE 
        WHEN (el.max_student - COUNT(DISTINCT il.student_id)) = 0 THEN 'No Seats'
        WHEN (el.max_student - COUNT(DISTINCT il.student_id)) <= 2 THEN '1-2 Seats'
        ELSE 'Many Seats'
    END AS booking_status
FROM ensemble_lesson el
LEFT JOIN individual_lesson il ON l.lesson_id = il.lesson_id
WHERE EXTRACT(YEAR FROM l.date) = 2024 -- Replace 2024 with the desired year
GROUP BY el.lesson_id, el.genre, l.date, el.max_student
ORDER BY el.genre, l.date;

SELECT 
    el.ensemble_lesson_id,
    el.genre,
    TO_CHAR(l.date, 'Day') AS weekday,
    CASE
        WHEN COUNT(es.student_id) >= el.max_student THEN 'Fully booked'
        WHEN COUNT(es.student_id) >= (el.max_student - 2) THEN '1-2 seats left'
        ELSE 'More seats left'
    END AS seat_availability
FROM 
    ensemble_lesson el
JOIN 
    lesson l ON el.lesson_id = l.lesson_id
LEFT JOIN 
    ensemble_lesson_student es ON el.ensemble_lesson_id = es.ensemble_lesson_id
WHERE 
    l.date BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days' -- Filter for next week
GROUP BY 
    el.ensemble_lesson_id, el.genre, l.date, el.max_student
ORDER BY 
    el.genre, weekday;
