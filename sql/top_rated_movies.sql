--PREGUNTA 1: ¿Cuáles son las 5 películas mejor valoradas según IMDB RATING y METASCORE?
SELECT  
    series_title,  
    imdb_rating,  
    meta_score  
FROM imdb_movies_clean  
ORDER BY imdb_rating DESC, meta_score DESC
LIMIT 5;