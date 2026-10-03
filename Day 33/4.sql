SELECT
    genre,
    COUNT(*) AS title_count
FROM (
    SELECT
        show_id,
        TRIM(
            SUBSTRING_INDEX(
                SUBSTRING_INDEX(listed_in, ', ', numbers.n),
                ', ', -1
            )
        ) AS genre
    FROM netflix_titles
    JOIN (
        SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3
        UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6
        UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
        UNION ALL SELECT 10
    ) numbers
    ON numbers.n <= 1 +
       (
           LENGTH(listed_in)
           - LENGTH(REPLACE(listed_in, ', ', ''))
       ) / 2
) AS genre_data
GROUP BY genre
ORDER BY title_count DESC;