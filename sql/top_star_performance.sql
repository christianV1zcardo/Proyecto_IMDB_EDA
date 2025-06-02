SELECT
    star1 as actor,
    COUNT(series_title) as num_movies,
    SUM(gross) as total_gross,
    AVG(imdb_rating) as avg_imdb_rating,
    AVG(meta_score) as avg_meta_score
FROM 
    imdb_movies_clean
WHERE
    gross IS NOT NULL AND gross > 0
GROUP BY
    director
HAVING
    COUNT(series_title) > 3 -- Solo los actores pricipales en más de 3 películas
ORDER BY
    num_movies DESC,
    avg_imdb_rating DESC,
    avg_meta_score DESC;
