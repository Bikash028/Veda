# SQL Analysis: Genre Popularity

/*SELECT
    genre,
    COUNT(*) AS title_count
FROM (
    SELECT
        show_id,
        TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(listed_in, ', ', numbers.n), ', ', -1)) AS genre
    FROM netflix_titles
    JOIN (
        SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3
        UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6
        UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
        UNION ALL SELECT 10
    ) numbers
    ON numbers.n <= 1 + LENGTH(listed_in) - LENGTH(REPLACE(listed_in, ', ', ''))
) AS genre_data
GROUP BY genre
ORDER BY title_count DESC;


# Check for duplicate titles

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT show_id) AS unique_titles
FROM netflix_titles;


# Genre Popularity by Content Type

SELECT
    type,
    genre,
    COUNT(*) AS title_count
FROM (
    SELECT
        show_id,
        type,
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
    ON numbers.n <= 1 + LENGTH(listed_in) - LENGTH(REPLACE(listed_in, ', ', ''))
) AS genre_data
GROUP BY type, genre
ORDER BY genre, title_count DESC;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT show_id) AS unique_show_ids
FROM netflix_titles;*/

# Content Rating Analysis


/*SELECT
    rating,
    COUNT(*) AS title_count
FROM netflix_titles
GROUP BY rating
ORDER BY title_count DESC;

SELECT
    rating,
    type,
    COUNT(*) AS title_count
FROM netflix_titles
GROUP BY rating, type
ORDER BY rating, title_count DESC;  */

/*SELECT
    country,
    COUNT(*) AS title_count
FROM (
    SELECT
        show_id,
        TRIM(
            SUBSTRING_INDEX(
                SUBSTRING_INDEX(country, ', ', numbers.n),
                ', ', -1
            )
        ) AS country
    FROM netflix_titles
    JOIN (
        SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3
        UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6
        UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
        UNION ALL SELECT 10
    ) numbers
    ON numbers.n <= 1 + LENGTH(country) - LENGTH(REPLACE(country, ', ', ''))
    WHERE country <> 'Unknown'
) AS country_data
GROUP BY country
ORDER BY title_count DESC;*/

SELECT
    country,
    COUNT(*) AS title_count
FROM (
    SELECT
        show_id,
        TRIM(
            BOTH ',' FROM
            TRIM(
                SUBSTRING_INDEX(
                    SUBSTRING_INDEX(country, ', ', numbers.n),
                    ', ', -1
                )
            )
        ) AS country
    FROM netflix_titles
    JOIN (
        SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3
        UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6
        UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
        UNION ALL SELECT 10
    ) numbers
    ON numbers.n <= 1 + LENGTH(country) - LENGTH(REPLACE(country, ', ', ''))
    WHERE country <> 'Unknown'
) AS country_data
WHERE country <> ''
GROUP BY country
ORDER BY title_count DESC;

SELECT
    release_year,
    type,
    COUNT(*) AS title_count
FROM netflix_titles
GROUP BY release_year, type
ORDER BY release_year, type;

SELECT
    year_added,
    type,
    COUNT(*) AS title_count
FROM netflix_titles
WHERE year_added IS NOT NULL
GROUP BY year_added, type
ORDER BY year_added, type;

SELECT
    year_added,
    type,
    COUNT(*) AS title_count
FROM netflix_titles
WHERE year_added IS NOT NULL
GROUP BY year_added, type
ORDER BY year_added, type;

SELECT
    type,
    ROUND(AVG(duration_value), 2) AS avg_duration,
    MIN(duration_value) AS min_duration,
    MAX(duration_value) AS max_duration
FROM netflix_titles
WHERE duration_value IS NOT NULL
GROUP BY type;

SELECT
    duration_value AS seasons,
    COUNT(*) AS tv_show_count
FROM netflix_titles
WHERE type = 'TV Show'
  AND duration_value IS NOT NULL
GROUP BY duration_value
ORDER BY duration_value;