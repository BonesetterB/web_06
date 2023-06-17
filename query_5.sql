SELECT t.fullname, s.name 
FROM teachers t 
LEFT JOIN subjects s ON s.teacher_id =t.id 
WHERE t.id = 1;
