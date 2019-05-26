.mode columns
.headers on
.nullvalue NULL

DROP VIEW IF EXISTS possibleMatch;
DROP VIEW IF EXISTS usersHobby;

CREATE VIEW usersHobby
as
select userName,idUser, carros, tecnologia, comida
from User, Hobby
where User.idHobby=Hobby.idHobby;

CREATE VIEW possibleMatch
as
SELECT targetName, otherName,
  (carros+tecnologia+comida)/2 as intercessao,
  c+t+co as reuniao
  from(
select target.userName as targetName, other.userName as otherName,
       target.carros+ other.carros as carros,
       target.tecnologia+ other.tecnologia as tecnologia,
       target.comida+ other.comida as comida,
       (target.carros+1)/2 as c,
       (target.tecnologia+1)/2 as t,
       (target.comida+1)/2 as co
from usersHobby target, usersHobby other
where target.idUser=0 and target.idUser<> other.idUser);

SELECT targetName, otherName, 1.0*intercessao/reuniao as jaccard
from possibleMatch;




DROP VIEW IF EXISTS possibleMatch;
DROP VIEW IF EXISTS usersHobby;
