 SELECT majorsin.students_id, sum(majorsin.dept_id) AS TotalMajors 
 FROM majorsin 
 GROUP BY majorsin.students_id;