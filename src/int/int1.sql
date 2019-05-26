.mode columns
.headers on
.nullvalue NULL

DROP VIEW IF EXISTS possibleMatch;
DROP VIEW IF EXISTS usersHobby;
-- SELECT *
-- FROM User CROSS JOIN ContaPremium;

-- Select User, (Count(ContaPremium.idUser)* 100 / (Select Count(*) From MyTable)) as Score

-- count(ContaPremium.idUser)/count(User.idUser)

CREATE VIEW usersHobby
as
select userName,idUser, carros, tecnologia, comida
from User, Hobby
where User.idHobby=Hobby.idHobby;

CREATE VIEW possibleMatch
as
select *
from usersHobby target, usersHobby others
where target.idUser=0 and target.idUser<> others.idUser;

DROP VIEW IF EXISTS possibleMatch;
DROP VIEW IF EXISTS usersHobby;
