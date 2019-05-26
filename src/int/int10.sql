.mode columns
.headers on
.nullvalue NULL

DROP VIEW IF EXISTS matches;

CREATE VIEW matches
as
select idMatch, first.userName as name1, second.userName as name2 , first.dataNascimento as data1, second.dataNascimento as data2
from Match, Like, User first, User second
where Match.like1=Like.idLike and
      (Like.user1= first.idUser and Like.user2= second.idUser)
      group by match.idMatch;

select idMatch,name1, name2, max(abs(strftime('%Y',data1)- strftime('%Y',data2))) as MAX
from matches;

DROP VIEW IF EXISTS matches;
