.mode columns
.headers on
.nullvalue NULL

SELECT nome, MAX(anunciante)
FROM (SELECT nome, Count(idCampanha) anunciante
FROM Anunciante, campanha
WHERE anunciante.idAnunciante = campanha.idAnunciante);
-- GROUP BY nome, cod);