SELECT COUNT(enrolled.student_id)
FROM enrolled 
WHERE enrolled.student_id IN (SELECT majorsin.students_id FROM majorsin WHERE majorsin.dept_id =(SELECT department.id FROM department WHERE department.name = "CS" LIMIT 1) 
AND enrolled.course_crn = (SELECT course.crn FROM course WHERE course.name = "CSC275"));