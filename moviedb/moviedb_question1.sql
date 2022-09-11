SELECT * FROM 
movie INNER JOIN oscar ON movie.id = oscar.movie_id 
WHERE oscar.type="Best-Picture" AND movie.earnings_rank = (SELECT MIN(movie.earnings_rank) FROM movie WHERE 1) LIMIT 1;