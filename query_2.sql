SELECT s2.name , s.fullname , ROUND(AVG(g.grade),2) as grade
FROM grades g 
LEFT JOIN students s ON s.id=g.student_id 
LEFT  JOIN subjects s2 ON s2.id=g.subject_id 
WHERE s2.id = 5
GROUP BY s.id 
ORDER BY  grade DESC 
LIMIT 1;