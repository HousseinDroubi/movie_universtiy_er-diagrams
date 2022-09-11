SELECT * 
FROM movie INNER JOIN oscar ON movie.id = oscar.movie_id 
WHERE oscar.type="Best-Picture";