.mode columns
.headers on
.nullvalue NULL

-- DONE and Works
select * from (
    select 'ContaFree', count(DISTINCT M.idMatch) from Match M join like L on M.like1 = L.idLike or M.like2 = L.idLike join ContaFree C on C.idUser = L.user1 or C.idUser = L.user2
        UNION ALL
    select 'ContaPremium', count(DISTINCT M.idMatch) from Match M join like L on M.like1 = L.idLike or M.like2 = L.idLike join ContaPremium CP on CP.idUser = L.user1 or CP.idUser = L.user2
) as foo order by 'count(DISTINCT M.idMatch)' DESC limit 1;