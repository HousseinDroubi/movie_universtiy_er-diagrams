SELECT * 
FROM course 
WHERE course.crn IN 
(SELECT enrolled.course_crn
FROM enrolled
WHERE enrolled.student_id IN
(SELECT majorsin.students_id
FROM majorsin
WHERE majorsin.dept_id =
(SELECT department.id FROM department WHERE department.name = "BIF")))