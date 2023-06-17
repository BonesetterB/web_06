SELECT t.fullname , ROUND(AVG(g.grade),2)
FROM grades g 
LEFT JOIN teachers t ON s.teacher_id =t.id
LEFT JOIN subjects s ON s.id =g.subject_id 
WHERE t.id =2