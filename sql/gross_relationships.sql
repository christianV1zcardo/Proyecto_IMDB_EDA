SELECT
    series_title,
    gross,
    imdb_rating,
    meta_score,
    no_of_votes
FROM 
    imdb_movies_clean
WHERE 
    gross IS NOT NULL AND gross > 0;