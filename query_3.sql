SELECT s2.name , g2.name , ROUND(AVG(g.grade),2) as grade
FROM grades g 
LEFT JOIN students s ON s.id=g.student_id 
LEFT  JOIN subjects s2 ON s2.id=g.subject_id 
LEFT JOIN groups g2 ON g2.id =s.group_id 
WHERE s2.id = 5
GROUP BY g2.name  
ORDER BY  grade DESC 
LIMIT 3;