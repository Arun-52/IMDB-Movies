-- a) can u get all data about movies?
SELECT * FROM project_movie_database.movies;

-- b) How do you get all data about directors?
SELECT * FROM project_movie_database.directors;

-- c) check how many movies are present in IMDB?
SELECT COUNT(*) FROM project_movie_database.movies;

-- d) Find these 3 directors: James Cameron ; Luc Besson ; John Woo
SELECT * FROM  project_movie_database.directors
WHERE name IN ('James Cameron', 'Luc Besson', 'John Woo');

-- e) Find all directors with name starting with Steven?
SELECT * FROM project_movie_database.directors
WHERE name like 'steven%';

-- f) Count female directors?
SELECT COUNT(*) FROM project_movie_database.directors 
WHERE gender = 1;

-- g) Find the name of the 10th first women directors?
SELECT name FROM project_movie_database.directors
WHERE gender = 1
ORDER BY id 
LIMIT 1 OFFSET 10;

-- h) What are the 3 most popular movies?
SELECT original_title 
FROM project_movie_database.movies
ORDER BY popularity DESC   
LIMIT 3;

-- i) What are the 3 most bankable movies?
SELECT original_title 
FROM project_movie_database.movies
ORDER BY budget DESC  
LIMIT 3;

-- j) What is the most awarded average vote since the January 1st, 2000?
SELECT original_title FROM project_movie_database.movies
WHERE release_date > '2000-01-01'
ORDER BY vote_average DESC
LIMIT 1;

-- k) Which movie(s) were directed by Brenda Chapman?
SELECT ORIGINAL_title FROM project_movie_database.movies 
JOIN project_movie_database.directors ON directors.id = movies.director_id
WHERE project_movie_database.directors.name = 'Brenda Chapman';

-- l) Whose director made the most movies?
SELECT name FROM project_movie_database.directors 
JOIN project_movie_database.movies ON directors.id = movies.director_id
GROUP BY director_id ORDER BY count(name) DESC
limit 1;

-- m) Whose director is the most bankable?
SELECT name FROM project_movie_database.directors 
JOIN project_movie_database.movies ON directors.id = movies.director_id
GROUP BY director_id ORDER BY sum(budget) DESC
limit 1;




















