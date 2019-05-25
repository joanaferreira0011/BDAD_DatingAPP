.mode columns
.headers on
.nullvalue NULL

-- DONE and Works
select idAnunciante,count(*) from campanha group by idAnunciante;