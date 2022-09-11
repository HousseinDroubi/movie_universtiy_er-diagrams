SELECT movie.name,movie.earnings_rank 
FROM movie,oscar
WHERE oscar.type="Best-Picture" AND movie.earnings_rank = (SELECT MIN(movie.earnings_rank) FROM movie WHERE 1) 
LIMIT 1;