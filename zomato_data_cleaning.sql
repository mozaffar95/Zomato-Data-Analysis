CREATE DATABASE IF NOT EXISTS zomato_data_analysis;
USE zomato_data_analysis;

-- Table check
SELECT * FROM zomato_data;
DESCRIBE zomato_data;

-- CLEAN RATING COLUMN
-- Remove spaces
UPDATE zomato_data
SET rate = TRIM(rate);
-- Remove '/5'
UPDATE zomato_data
SET rate = REPLACE(rate, '/5', '');
-- Convert invalid values to NULL
UPDATE zomato_data
SET rate = NULL
WHERE rate NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';
-- Convert to FLOAT safely
ALTER TABLE zomato_data
MODIFY rate FLOAT;

-- Verify rating range
SELECT MIN(rate), MAX(rate) FROM zomato_data;

-- CLEAN COST COLUMN
-- Remove comma if exists
UPDATE zomato_data
SET `approx_cost(for two people)` =
REPLACE(`approx_cost(for two people)`, ',', '');

-- Convert to numeric
ALTER TABLE zomato_data
MODIFY `approx_cost(for two people)` INT;

-- Optional: Rename column (professional practice)
ALTER TABLE zomato_data
CHANGE `approx_cost(for two people)` cost_for_two INT;

-- Verify cost range
SELECT MIN(cost_for_two), MAX(cost_for_two) FROM zomato_data;

-- NULL CHECK
SELECT 
SUM(rate IS NULL) AS null_rating,
SUM(cost_for_two IS NULL) AS null_cost,
SUM(votes IS NULL) AS null_votes
FROM zomato_data;

-- DUPLICATE CHECK (STRONG VERSION)
SELECT name, `listed_in(type)`, COUNT(*) AS duplicate_count
FROM zomato_data
GROUP BY name, `listed_in(type)`
HAVING COUNT(*) > 1;

-- FINAL CHECK
SELECT * FROM zomato_data LIMIT 10;



