# we select gini_index for districts in year 2021 from gini_index
CREATE TABLE gini_2021 AS
SELECT 
    district,
    `2021` AS gini_2021
FROM gini_index;

# we select poverty risk for districts in year 2021 from poverty_risk_rates
CREATE TABLE poverty_2021 AS
SELECT 
    district,
    `2021` AS poverty_2021
FROM poverty_risk_rates;

select * from poverty_2021;

#DROP TABLE merged_2021;
CREATE TABLE merged_2021 AS
SELECT 
    e.district,
    r.all_market_median_m_month_,
    r.change_compared_to_last_yr_in_all_segments_,
    g.gini_2021,
    p.poverty_2021,
    e.afd_prc,
    e.die_linke_prc,
    2021 AS year
FROM election_2021 e
JOIN rent_growth_2021 r
    ON e.district = r.district
JOIN gini_2021 g
    ON e.district = g.district
Join poverty_2021 p
	on e.district = p.district;

select * from merged_2021;