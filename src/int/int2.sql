.mode columns
.headers on
.nullvalue NULL

-- SELECT SUM(strftime('%d',Encontro.match)-
-- strftime('%d',data.encontro)) "No de dias"
-- FROM Match, Encontro
-- WHERE Match.idMatch=Encontro.match
-- GROUP BY idMatch;

SELECT idMatch, user1.userName, user2.userName, max(dif)
from User user1,User user2, (

      SELECT idMatch, like1.user1 as user1, like1.user2 as user2, strftime('%d',Encontro.data)- strftime('%d',like1.data) as dif
      FROM Match, Encontro, Like like1, Like like2
      WHERE Match.idMatch=Encontro.match
            and Match.like1=like1.idLike
            and Match.like2=like2.idLike
      GROUP BY idMatch) as likes

where user1.idUser = likes.user1 and user2.idUser= likes.user2;
