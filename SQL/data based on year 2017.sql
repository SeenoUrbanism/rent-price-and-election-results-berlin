DESCRIBE rent_growth_2017;
DESCRIBE election_2017;
DESCRIBE gini_index;
select * from gini_index;
# we select gini_index for districts in year 2017 from gini_index
CREATE TABLE gini_2017 AS
SELECT 
    district,
    `2017` AS gini_2017
FROM gini_index;

# we select poverty risk for districts in year 2017 from poverty_risk_rates
CREATE TABLE poverty_2017 AS
SELECT 
    district,
    `2017` AS poverty_2017
FROM poverty_risk_rates;

select * from poverty_2017;

# DROP TABLE merged_2017;
CREATE TABLE merged_2017 AS
SELECT 
    e.district,
    r.all_market_median_m_month_,
    r.change_compared_to_last_yr_in_all_segments_,
    g.gini_2017,
    p.poverty_2017,
    e.afd_prc,
    e.die_linke_prc,
    2017 AS year
FROM election_2017 e
JOIN rent_growth_2017 r
    ON e.district = r.district
JOIN gini_2017 g
    ON e.district = g.district
Join poverty_2017 p
	on e.district = p.district;

select * from merged_2017;
