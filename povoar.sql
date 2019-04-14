PRAGMA	foreign_keys	=	ON;


--Users
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (0, "wonka", "Willy", "Wonka", "Man", "chocolate", "willy@chocolatefactory.com", "01/01/1960","Chocolate and small people");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (1, "sanders", "Bernie", "Sanders", "Man", "feelthebern", "bernie@bernie2020.com", "08/09/1941","Socialism and not the top 1%");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (2, "trump", "Donald", "Trump", "Man", "wall", "trump@trump.com", "14/06/1946","Making America Great Again is what I do");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (3, "clinton", "Hillary", "Clinton", "Woman", "damnRussia", "hillary@hillary2016.com", "26/10/1947","Still fighting");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (4, "may", "Theresa", "May", "Woman", "damnBrexit", "theresamay@europeanunion.com", "01/10/1956","I love the UK and the EU");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (5, "kim", "Jong-un", "Kim", "Man", "nucs", "kimjongun@northkorea.com", "08/01/1983","My Nation and Winnie the Poo");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (6, "merkel", "Angela", "Merkel", "Woman", "eu", "angelamerkel@europeanunion.com", "17/07/1954","Rules");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (7, "putin", "Vladimir", "Putin", "Man", "motherRussia", "vladimir@russia.com", "07/10/1952","Russia. Bathing.");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (8, "jinping", "Xi", "Jinping", "Man", "presidentForever", "xijinping@china.com", "15/06/1953","Communism");

--ContaPremium
INSERT INTO ContaPremium(idUser, dataPagamentoInicio, dataPagamentoProximo, saldo) VALUES (0, "01/02/2015", "10/06/2018", 0); -- Willy Wonka
INSERT INTO ContaPremium(idUser, dataPagamentoInicio, dataPagamentoProximo, saldo) VALUES (2, "01/03/2010", "10/06/2018", -480); -- Donald Trump
INSERT INTO ContaPremium(idUser, dataPagamentoInicio, dataPagamentoProximo, saldo) VALUES (2, "01/02/2017", "10/06/2018", -10); -- Theresa May

--ContaFree
INSERT INTO ContaFree(idUser, mesGratisUsado) VALUES (1, 0); -- Bernie Sanders
INSERT INTO ContaFree(idUser, mesGratisUsado) VALUES (3, 1); -- Hillary Clinton
INSERT INTO ContaFree(idUser, mesGratisUsado) VALUES (5, 0); -- Kim Jong-un

--Interesse
insert into Interesse values (0, 0);
insert into Interesse values (1,1);
insert into Interesse values (2,2);

--Anunciante
INSERT INTO Anunciante(idAnunciante, nome, saldo) VALUES (1, "McDonalds", -230000);
INSERT INTO Anunciante(idAnunciante, nome, saldo) VALUES (2, "Toyota", 0);


--Campanha
INSERT INTO Campanha(idCampanha, conteudo, dataInicio, dataFim, idAnunciante, custo) VALUES (1, "I'm lovin it", "02/05/2015", "01/08/2025", 1, 1000000);--McDonalds
INSERT INTO Campanha(idCampanha, conteudo, dataInicio, dataFim, idAnunciante, custo) VALUES (2, "New McBifana", "01/01/2018", "01/08/2018", 1, 75000);--McDonalds
/*
CREATE TABLE TipoAnuncio(
  idTipoAnuncio INTEGER PRIMARY KEY AUTOINCREMENT,
  tipo TEXT NOT NULL,
  data TEXT NOT NULL,
  idAnuncioTemplate NUMBER REFERENCES AnuncioTemplate(idAnuncioTemplate)
);
*/
--TipoAnuncio
--INSERT INTO TipoAnuncio(1, )

-- CREATE TABLE AnuncioTemplate(
--   idAnuncioTemplate INTEGER PRIMARY KEY AUTOINCREMENT,
--   click INT NOT NULL, --bool
--   idTipoAnuncio NUMBER REFERENCES TipoAnuncio(idTipoAnuncio)
-- );

--AnuncioTrmplate

-- CREATE TABLE Like(
--   idLike INTEGER PRIMARY KEY AUTOINCREMENT,
--   user1 NUMBER REFERENCES User(idUser),
--   user2 NUMBER REFERENCES User(idUser),
--   data TEXT NOT NULL
-- );

--Like
INSERT INTO Like(idLike, user1, user2, data) VALUES (1, 2,7,"01/03/2016"); -- Trump to Putin
INSERT INTO Like(idLike, user1, user2, data) VALUES (2, 2,4,"02/03/2018"); -- Trump to May
INSERT INTO Like(idLike, user1, user2, data) VALUES (3, 2,5,"04/03/2018"); -- Trump to Kim Jong-un
INSERT INTO Like(idLike, user1, user2, data) VALUES (4, 5,2,"05/03/2018"); -- Kim Jong-Un to Trump
INSERT INTO Like(idLike, user1, user2, data) VALUES (5, 3,0,"05/03/2019"); -- Hillary to Wonka
INSERT INTO Like(idLike, user1, user2, data) VALUES (6, 5,8,"07/04/2019"); -- Kim Jong-Un to Xi Jinping

--Match
INSERT INTO Match(idMatch, like1, like2) VALUES (1, 3,4); -- Trump and Kim Jong-un
