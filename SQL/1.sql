
create DATABASE if not exists final_proj
	character set utf8mb4
    collate utf8mb4_unicode_ci;
USE final_proj;
SHOW TABLES;
SELECT COUNT(*) FROM armut_raw;
DESCRIBE armut_raw;
DROP TABLE armut_raw;
describe gini;
DROP TABLE election_2017_clean;

SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;
OPT_LOCAL_INFILE=1;




SHOW COLUMNS FROM election_2017_clean;
SHOW COLUMNS FROM election_2021_clean;
SHOW COLUMNS FROM election_2025_clean;
CREATE TABLE election_2017_clean (
    bezirksname VARCHAR(100),
    wahlberechtigte_insgesamt INT,
    waehler INT,
    gueltige_stimmen INT,
    spd INT,
    cdu INT,
    greens INT,
    fdp INT,
    afd INT,
    lefts INT,
    others INT,
    turnout_pct DECIMAL(5,2),
    spd_pct DECIMAL(5,2),
    cdu_pct DECIMAL(5,2),
    greens_pct DECIMAL(5,2),
    fdp_pct DECIMAL(5,2),
    afd_pct DECIMAL(5,2),
    lefts_pct DECIMAL(5,2),
    others_pct DECIMAL(5,2)
);

LOAD DATA LOCAL INFILE 'C:/Users/Sina A.Y/documents/ironhack/rent-price-and-election-results-berlin/data/clean/election_2017_clean.csv'
INTO TABLE election_2017_clean
CHARACTER SET latin1
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


