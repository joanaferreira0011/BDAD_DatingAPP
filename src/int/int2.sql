.mode columns
.headers on
.nullvalue NULL

SELECT SUM(strftime('%d',data)-
strftime('%d',data)) "No de dias"
FROM Match, Encontro
WHERE Match.idMatch=Encontro.idMatch
GROUP BY idMatch;