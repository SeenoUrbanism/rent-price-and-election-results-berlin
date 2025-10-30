# we select gini_index for districts in year 2025 from gini_index
CREATE TABLE gini_2025 AS
SELECT 
    district,
    `2025` AS gini_2025
FROM gini_index;

# we select poverty risk for districts in year 2025 from poverty_risk_rates
CREATE TABLE poverty_2025 AS
SELECT 
    district,
    `2025` AS poverty_2025
FROM poverty_risk_rates;

select * from poverty_2025;

#DROP TABLE merged_2025;
CREATE TABLE merged_2025 AS
SELECT 
    e.district,
    r.all_market_median_m_month_,
    r.change_compared_to_last_yr_in_all_segments_,
    g.gini_2025,
    p.poverty_2025,
    e.afd_prc,
    e.die_linke_prc,
    2025 AS year
FROM election_2025 e
JOIN rent_growth_2025 r
    ON e.district = r.district
JOIN gini_2025 g
    ON e.district = g.district
Join poverty_2025 p
	on e.district = p.district;

select * from merged_2025;