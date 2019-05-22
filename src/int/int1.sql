.mode columns
.headers on
.nullvalue NULL

-- SELECT * 
-- FROM User CROSS JOIN ContaPremium;

-- Select User, (Count(ContaPremium.idUser)* 100 / (Select Count(*) From MyTable)) as Score

-- count(ContaPremium.idUser)/count(User.idUser)