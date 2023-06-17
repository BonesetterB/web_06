SELECT s.fullname , ROUND(AVG(g.grade),2) as grade
FROM grades g 
LEFT JOIN students s ON s.id=g.student_id 
GROUP BY s.id 
ORDER BY  grade DESC 
LIMIT 5;