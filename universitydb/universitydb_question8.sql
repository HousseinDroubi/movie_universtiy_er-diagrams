 SELECT department.name, COUNT(majorsin.students_id) AS TotalNumber
 FROM majorsin,department 
 GROUP BY majorsin.students_id;