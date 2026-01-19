-- 1. Create the Database
CREATE DATABASE traffic_project;
USE traffic_project;

-- 2. Create the Lookup Tables 

CREATE TABLE lookup_volume (
    keyword_id INT PRIMARY KEY,
    search_volume INT
);

CREATE TABLE lookup_traffic (
    keyword_id INT PRIMARY KEY,
    lookup_keyword VARCHAR(255),
    traffic BIGINT,
    traffic_percent DECIMAL(5,2),
    traffic_cost BIGINT       
);

CREATE TABLE lookup_cost (
    keyword_id INT PRIMARY KEY,
    avg_cpc DECIMAL(10,2),
    avg_competition DECIMAL(5,2)
);

CREATE TABLE lookup_saturation (
    keyword_id INT PRIMARY KEY,
    result_count BIGINT
);

CREATE TABLE lookup_ranking (
    keyword_id INT PRIMARY KEY,
    avg_position DECIMAL(5,2),
    avg_prev_position DECIMAL(5,2)
);

-- 3. Create the Main Data Table
-- Notice: We add a NEW 'id' as Primary Key. 'keyword_id' is just a link.

CREATE TABLE main_data (
	title VARCHAR(255),
    keyword VARCHAR(255),
    keyword_id INT,                      -- This links to the tables above
    position INT,
    prev_position INT,
    id INT AUTO_INCREMENT PRIMARY KEY    -- This is the new unique ID for every row
);

-- Show me PMP keywords from the main list should combined with their search voulume
SELECT
	m.title,
    m.keyword,
    v.search_volume
FROM main_data m
JOIN lookup_volume v ON m.keyword_id = v.keyword_id
LIMIT 10;

-- 1. Link Main Data to the Volume Table
ALTER TABLE main_data
ADD CONSTRAINT fk_volume
FOREIGN KEY (keyword_id) REFERENCES lookup_volume(keyword_id);

-- 2. Link Main Data to the Traffic Table
ALTER TABLE main_data
ADD CONSTRAINT fk_traffic
FOREIGN KEY (keyword_id) REFERENCES lookup_traffic(keyword_id);

-- 3. Link Main Data to the Cost Table
ALTER TABLE main_data
ADD CONSTRAINT fk_cost
FOREIGN KEY (keyword_id) REFERENCES lookup_cost(keyword_id);

-- 4. Link Main Data to the Saturation Table
ALTER TABLE main_data
ADD CONSTRAINT fk_saturation
FOREIGN KEY (keyword_id) REFERENCES lookup_saturation(keyword_id);

-- 5. Link Main Data to the Ranking Table
ALTER TABLE main_data
ADD CONSTRAINT fk_ranking
FOREIGN KEY (keyword_id) REFERENCES lookup_ranking(keyword_id);

SELECT * FROM main_data;