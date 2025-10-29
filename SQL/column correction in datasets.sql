use final_proj_new;
SHOW COLUMNS FROM election_2021;
SHOW COLUMNS FROM rent_growth_2021;
SHOW COLUMNS FROM gini_index;
# alter the column name
alter table election_2017 rename column bezirksname to district;
alter table election_2021 rename column bezirksname to district;
alter table election_2025 rename column bezirksname to district;
# for election_2025
ALTER TABLE election_2025
CHANGE waehler voter int,
change wahlbeteiligung_prc turnout_prc int,
CHANGE wahlberechtigte_insgesamt eligible_voters double,
CHANGE gueltige_stimmen valid_votes double;
# for election_2021
ALTER TABLE election_2021
CHANGE waehler voter int,
change wahlbeteiligung_prc turnout_prc int,
CHANGE wahlberechtigte_insgesamt eligible_voters double,
CHANGE gueltige_stimmen valid_votes double;
# for election_2017
ALTER TABLE election_2017
CHANGE waehler voter int,
change wahlbeteiligung_prc turnout_prc int,
CHANGE wahlberechtigte_insgesamt eligible_voters double,
CHANGE gueltige_stimmen valid_votes double;