
-- Show the timezone
SHOW timezone;

-- Show current date time with timezone
SELECT now();


CREATE TABLE timez (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT INTO timez VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');

SELECT * FROM timez;

-- Show current date
SELECT CURRENT_DATE;

-- Show current date only
SELECT now()::DATE;

-- Show current time only
SELECT now()::time;

-- current date with formate
SELECT to_char(now(), 'dd/mm/yyyy')
SELECT to_char(now(), 'DDD');

-- Interval date month year
SELECT CURRENT_DATE - INTERVAL '1 year';

-- Two date duration (AGE)
SELECT age(CURRENT_DATE, '2000-10-31');
SELECT *, age(CURRENT_DATE, dob) from students;

-- extracting year
SELECT extract(year FROM '2024-01-25'::date);