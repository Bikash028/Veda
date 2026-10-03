/*LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/netflix_mysql.csv'
INTO TABLE netflix_titles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    show_id,
    type,
    title,
    director,
    cast,
    country,
    @date_added,
    release_year,
    rating,
    duration,
    listed_in,
    description,
    @year_added,
    @month_added,
    @duration_value
)
SET
    date_added = NULLIF(@date_added, ''),
    year_added = NULLIF(@year_added, ''),
    month_added = NULLIF(@month_added, ''),
    duration_value = NULLIF(@duration_value, '');*/
    
    
#SELECT COUNT(*) AS total_rows
#FROM netflix_titles; 

SELECT *
FROM netflix_titles
LIMIT 5;   
    