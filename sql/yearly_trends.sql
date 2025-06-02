-- PREGUNTA 4
SELECT 
    released_year,
    count(series_title) as num_movies,
    avg(imdb_rating),
    avg(meta_score)
FROM 
    imdb_movies_clean
GROUP BY 
    released_year
ORDER BY 
    released_year ASC