USE bigfoot_test_db;

SELECT 'All Albums' AS 'Info';
SELECT * FROM albums;
SELECT 'All Albums with 10x Sales' AS 'Info';
UPDATE albums SET sales = sales * 10 ;
SELECT * FROM albums;

SELECT 'Albums Released Before 1980' AS 'Info';
SELECT * FROM albums WHERE release_date < 1980;
SELECT 'Albums Released Before 1980 with Updated Release Date in 1800s' AS 'Info';
UPDATE albums SET release_date = 1826 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;


SELECT 'Michael Jackson Albums' AS 'INFO';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
SELECT 'Michael Jackson Albums but He has a New Name' AS 'INFO';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';
