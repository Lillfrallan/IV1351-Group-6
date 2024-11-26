SELECT 
    s.student_id,
    CONCAT(st.first_name, ' ', st.last_name) AS student_name,
    COUNT(s.sibling_id) AS sibling_count
FROM sibling s
RIGHT JOIN student st ON s.student_id = st.id
GROUP BY s.student_id, st.first_name, st.last_name
ORDER BY sibling_count;
