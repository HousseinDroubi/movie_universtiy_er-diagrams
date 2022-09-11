SELECT student.id,student.name
FROM student,enrolled
WHERE student.id NOT IN (SELECT enrolled.student_id FROM enrolled WHERE 1)