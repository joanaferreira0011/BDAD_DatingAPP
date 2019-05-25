.mode columns
.headers on
.nullvalue NULL

-- DONE and Works
SELECT local FROM Encontro GROUP BY "local" ORDER BY count(*) DESC limit 1;