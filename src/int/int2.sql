.mode columns
.headers on
.nullvalue NULL

SELECT SUM(strftime('%d',Encontro.match)-
strftime('%d',data.encontro)) "No de dias"
FROM Match, Encontro
WHERE Match.idMatch=Encontro.match
GROUP BY idMatch;
