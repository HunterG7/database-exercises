USE bigfoot_test_db;

SELECT 'All Albums' AS 'DISPLAYING';
SELECT * FROM albums;

SELECT 'Albums Released After 1991' AS 'DISPLAYING';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Disco Albums' AS 'DISPLAYING';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Eagles'' Albums' AS 'DISPLAYING';
DELETE FROM albums WHERE artist = 'Eagles';

SElECT 'All previously shown fields are now deleted. Updated Albums:' AS 'DISPLAYING';
SELECT * FROM albums;
