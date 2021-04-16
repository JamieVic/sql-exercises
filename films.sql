-- Select all columns
SELECT * FROM filmdb.films;

-- Select single column
SELECT title FROM filmdb.films;

-- Select multiple columns
SELECT title, release_year FROM filmdb.films;

-- Filter duplicates
SELECT DISTINCT language FROM filmdb.films;

-- Count rows in column
SELECT COUNT(title) FROM filmdb.films;

-- Count unique rows in column
SELECT COUNT(DISTINCT language) FROM filmdb.films;

-- Filtering with numeric value
SELECT * FROM filmdb.films WHERE release_year > 2000;

-- Filtering with text value
SELECT * FROM filmdb.films WHERE language = 'English';

-- Filtering with multiple conditions
SELECT * FROM filmdb.films WHERE release_year > 2000 AND language = 'English';

-- Filtering with multiple conditions where not all conditions are true
SELECT * FROM filmdb.films WHERE release_year > 2000 OR language = 'English';

-- Filtering between two conditions
SELECT * FROM filmdb.films WHERE release_year BETWEEN 2000 AND 2010;

-- Filtering with many conditions
SELECT * FROM filmdb.films WHERE language IN ('English', 'French', 'Spanish');

-- Searching pattern
SELECT * FROM filmdb.films WHERE title LIKE 'A%';

-- Sum function
SELECT SUM(duration) FROM filmdb.films;

-- Average function
SELECT AVG(duration) FROM filmdb.films;

-- Min function
SELECT MIN(duration) FROM filmdb.films;

-- Max function
SELECT MAX(duration) FROM filmdb.films;

-- Aliasing
SELECT MAX(GROSS) AS max_gross, MAX(budget) AS max_budget FROM filmdb.films;

-- Sorting single column in ascending order
SELECT * FROM filmdb.films ORDER BY title;

-- Sorting single column in descending order
SELECT * FROM filmdb.films ORDER BY title DESC;

-- Sorting multiple columns
SELECT * FROM filmdb.films ORDER BY title, release_year;

-- Grouping data
SELECT release_year, COUNT(*) FROM filmdb.films GROUP BY release_year;

-- Combining ordering and grouping functions
SELECT release_year, COUNT(*) FROM filmdb.films GROUP BY release_year ORDER BY COUNT(*) DESC;

-- Grouping with conditions
SELECT release_year FROM filmdb.films GROUP BY release_year HAVING COUNT(title) > 5;