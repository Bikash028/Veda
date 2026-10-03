SELECT
    country_name,
    COUNT(*) AS title_count
FROM (
    SELECT
        show_id,
        TRIM(
            BOTH ',' FROM
            TRIM(
                SUBSTRING_INDEX(
                    SUBSTRING_INDEX(country, ', ', numbers.n),
                    ', ',
                    -1
                )
            )
        ) AS country_name
    FROM netflix_titles
    JOIN (
        SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3
        UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6
        UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
        UNION ALL SELECT 10
    ) numbers
    ON numbers.n <= 1 +
       (
           LENGTH(country)
           - LENGTH(REPLACE(country, ', ', ''))
       ) / 2
    WHERE country <> 'Unknown'
) AS country_data
WHERE country_name <> ''
GROUP BY country_name
ORDER BY title_count DESC;