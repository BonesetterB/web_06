SELECT s2.name ,g2.name , s.fullname , g.grade  
FROM grades g 
LEFT JOIN groups g2 ON g2.id =s.group_id 
LEFT JOIN students s ON s.id =g.student_id 
LEFT JOIN subjects s2 ON s2.id =g.subject_id 
WHERE g2.id = 1 AND  s2.id = 3;
