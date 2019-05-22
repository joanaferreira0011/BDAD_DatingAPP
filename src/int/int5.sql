.mode columns
.headers on
.nullvalue NULL

SELECT * FROM (SELECT count(*) as places FROM Local GROUP BY pais)  WHERE max(places);