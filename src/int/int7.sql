.mode columns
.headers on
.nullvalue NULL

-- DONE and Works
select user1,count(*) from match natural join like where like.idLike = match.like1 or like.idLike = match.like2 group by user1;