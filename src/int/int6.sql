.mode columns
.headers on
.nullvalue NULL

select remetente, count(*) from Mensagem group by remetente order by count(*) DESC limit 1;