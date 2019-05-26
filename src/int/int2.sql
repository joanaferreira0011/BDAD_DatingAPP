.mode columns
.headers on
.nullvalue NULL


SELECT avg(dif) as average
from (

      SELECT idMatch, like1.user1 as user1, like1.user2 as user2, strftime('%d',Encontro.data)- strftime('%d',like1.data) as dif
      FROM Match, Encontro, Like like1, Like like2
      WHERE Match.idMatch=Encontro.match
            and Match.like1=like1.idLike
            and Match.like2=like2.idLike
      GROUP BY idMatch) as likes;
