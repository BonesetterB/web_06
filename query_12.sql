SELECT s.group_id , s.fullname, g.grade, g.date_of 
FROM grades g
LEFT JOIN students s ON s.group_id =2
LEFT JOIN subjects s2 ON s2.id =g.subject_id 
WHERE g.subject_id =1
  AND g.date_of = (SELECT MAX(date_of) FROM grades WHERE subject_id =1)
  AND g.student_id IN (SELECT id FROM students WHERE group_id = 2);

