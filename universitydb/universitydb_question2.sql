SELECT *
FROM course
WHERE course.start_time = (SELECT MIN(course.start_time) FROM course WHERE 1)