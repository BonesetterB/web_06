SELECT s.fullname, t.fullname,  s2.name 
FROM grades g 
LEFT JOIN students s on s.id =g.student_id 
LEFT JOIN subjects s2 on s2.id =g.subject_id 
LEFT JOIN teachers t on t.id =s2.teacher_id  
WHERE s.id =10 AND t.id =2
GROUP BY s2.name ;