PRAGMA	foreign_keys	=	ON;


--Users
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (0, "wonka", "Willy", "Wonka", "Man", "chocolate", "willy@chocolatefactory.com", "01/01/1960","Chocolate and small people");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (1, "sanders", "Bernie", "Sanders", "Man", "feelthebern", "bernie@bernie2020.com", "08/09/1941","Socialism and not the top 1%");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (2, "trump", "Donald", "Trump", "Man", "wall", "trump@trump.com", "14/06/1946","Making America Great Again is what I do");
INSERT INTO User(idUser, userName, primeiroNome, ultimoNome, genero, password, email, dataNascimento, interesses) VALUES (3, "clinton", "Hillary", "Clinton", "Woman", "damnRussia", "hillary@hillary2016.com", "26/10/1947","Fighting");

--ContaPremium
INSERT INTO ContaPremium(idUser, dataPagamentoInicio, dataPagamentoProximo, saldo) VALUES (0, "01/02/2015", "10/06/2018", 0); -- Willy Wonka
INSERT INTO ContaPremium(idUser, dataPagamentoInicio, dataPagamentoProximo, saldo) VALUES (2, "01/02/2010", "10/06/2018", -480); -- Donald Trump

--ContaFree
INSERT INTO ContaFree(idUser, mesGratisUsado) VALUES (1, 0); -- Bernie Sanders
INSERT INTO ContaFree(idUser, mesGratisUsado) VALUES (3, 1); -- Hillary Clinton

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
