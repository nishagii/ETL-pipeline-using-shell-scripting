CREATE DATABASE etldb

SELECT current_database();

CREATE TABLE access_log (
    timestamp VARCHAR,
    latitude VARCHAR,
    longitude VARCHAR,
    visitorid VARCHAR
);

SELECT * FROM access_log;

