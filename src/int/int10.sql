.mode columns
.headers on
.nullvalue NULL

-- NOT DONED
select idMatch, user1, user2, User.dataNascimento from match natural join like natural join User where (like.user1 = User.idUser) and (like.idLike = match.like1 or like.idLike = match.like2) group by dataNascimento, idMatch;