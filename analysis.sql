-- Total content count
SELECT COUNT(*) AS total_content FROM netflix;

-- Movies vs TV Shows
SELECT type, COUNT(*) 
FROM netflix
GROUP BY type;

-- Top 5 countries
SELECT country, COUNT(*) AS total
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC
LIMIT 5;

-- Content by year
SELECT release_year, COUNT(*) 
FROM netflix
GROUP BY release_year
ORDER BY release_year DESC;

-- Top genres
SELECT listed_in, COUNT(*) 
FROM netflix
GROUP BY listed_in
ORDER BY COUNT(*) DESC
LIMIT 5;
