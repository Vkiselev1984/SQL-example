-- A syntax compatible with MySQL

CREATE FUNCTION FormatSecondsToTime(seconds INT)
RETURNS VARCHAR(50)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE remaining_seconds INT;

    SET days = seconds / (60 * 60 * 24);
    SET seconds = seconds % (60 * 60 * 24);

    SET hours = seconds / (60 * 60);
    SET seconds = seconds % (60 * 60);

    SET minutes = seconds / 60;
    SET remaining_seconds = seconds % 60;

    RETURN CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes', remaining_seconds, ' seconds'); 
END; 

SELECT FormatSecondsToTime(123456);

SELECT number
FROM (VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10)) AS Numbers(number)
WHERE number % 2 = 0;

-- A syntax compatible with SQLite, where DECLARE, RETURN and CONCAT are replaced with equivalents.

CREATE TEMP TABLE TimeComponents AS 
SELECT 
  CAST(seconds / (60 * 60 * 24) AS INTEGER) AS days,
  CAST((seconds % (60 * 60 * 24)) / (60 * 60) AS INTEGER) AS hours,
  CAST((seconds % (60 * 60)) / 60 AS INTEGER) AS minutes,
  seconds % 60 AS remaining_seconds 
FROM (SELECT 123456 AS seconds);
-- Print formatted time
SELECT 
  days || ' days ' || hours || ' hours ' || minutes || ' minutes ' || remaining_seconds || ' seconds' 
FROM TimeComponents;