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
INSERT INTO ContaPremium(idUser, dataPagamentoInicio, dataPagamentoProximo, saldo) VALUES (0, "2015-02-01", "2016-10-06", 0); -- Willy Wonka
INSERT INTO ContaPremium(idUser, dataPagamentoInicio, dataPagamentoProximo, saldo) VALUES (2, "2010-03-01", "2018-10-06", -480); -- Donald Trump
INSERT INTO ContaPremium(idUser, dataPagamentoInicio, dataPagamentoProximo, saldo) VALUES (2, "2017-02-01", "2018-10-06", -10); -- Theresa May

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
INSERT INTO Anunciante(idAnunciante, nome, saldo) VALUES (3, "Tencent", -10000);

--Campanha
INSERT INTO Campanha(idCampanha, conteudo, dataInicio, dataFim, idAnunciante, custo) VALUES (1, "I'm lovin it", "02/05/2015", "01/08/2025", 1, 1000000);--McDonalds
INSERT INTO Campanha(idCampanha, conteudo, dataInicio, dataFim, idAnunciante, custo) VALUES (2, "New McBifana", "01/01/2018", "01/08/2018", 1, 75000);--McDonalds


--TipoAnuncio
INSERT INTO TipoAnuncio(idTipoAnuncio, data, campanha) VALUES (1, '02/06/2016', 1);
INSERT INTO TipoAnuncio(idTipoAnuncio, data, campanha) VALUES (2, '04/06/2016', 1);
INSERT INTO TipoAnuncio(idTipoAnuncio, data, campanha) VALUES (3, '02/01/2018', 2);

--AnuncioTemplate
INSERT INTO AnuncioTemplate(idAnuncioTemplate, click, tipoAnuncio) VALUES(1, 0, 1);
INSERT INTO AnuncioTemplate(idAnuncioTemplate, click, tipoAnuncio) VALUES(2, 0, 3);
INSERT INTO AnuncioTemplate(idAnuncioTemplate, click, tipoAnuncio) VALUES(3, 0, 2);


--Like
INSERT INTO Like(idLike, user1, user2, data) VALUES (1, 2,7,"2016-03-01"); -- Trump to Putin
INSERT INTO Like(idLike, user1, user2, data) VALUES (2, 2,4,"2018-03-02"); -- Trump to May
INSERT INTO Like(idLike, user1, user2, data) VALUES (3, 2,5,"2018-03-04"); -- Trump to Kim Jong-un
INSERT INTO Like(idLike, user1, user2, data) VALUES (4, 5,2,"2018-03-05"); -- Kim Jong-Un to Trump
INSERT INTO Like(idLike, user1, user2, data) VALUES (5, 3,0,"2019-03-05"); -- Hillary to Wonka
INSERT INTO Like(idLike, user1, user2, data) VALUES (6, 5,8,"2018-04-07"); -- Kim Jong-Un to Xi Jinping
INSERT INTO Like(idLike, user1, user2, data) VALUES (7, 3,1,"2016-03-05"); -- Hillary to Bernie
INSERT INTO Like(idLike, user1, user2, data) VALUES (8, 8,5,"2018-04-08"); -- Xi Jinping to Kim Jong-un

--Match
INSERT INTO Match(idMatch, like1, like2) VALUES (1, 3,4); -- Trump and Kim Jong-un
INSERT INTO Match(idMatch, like1, like2) VALUES (2, 6,8); -- Xi Jinping and Kim Jong-un


--Local
INSERT INTO Local(idLocal, morada, pais) VALUES (1, 'Capella Hotel Singapore','Singapore');
INSERT INTO Local(idLocal, morada, pais) VALUES (2, 'Sofitel Legend Metropole Hanoi','Vietnam');
INSERT INTO Local(idLocal, morada, pais) VALUES (3, 'Zhongnanhai','China');

--Encontro
INSERT INTO Encontro(idEncontro, match, local, data) VALUES (1, 1, 1, '2018-06-12'); -- Trump and Kim 1
INSERT INTO Encontro(idEncontro, match, local, data) VALUES (2, 1, 2, '2019-02-27'); -- Trump and Kim 2
INSERT INTO Encontro(idEncontro, match, local, data) VALUES (3, 2, 3, '2018-03-25'); -- Xi and Kim 1

--Mensagem
INSERT INTO Mensagem(idMensagem, match, remetente, conteudo, data) VALUES (1, 1, 2, 'Hey Kim, I think we gotta talk', '2018-03-06'); -- Trump to Kim
INSERT INTO Mensagem(idMensagem, match, remetente, conteudo, data) VALUES (2, 1, 5, 'Hey Trump, sure. Come to Peyongyang.', '2018-03-06');
INSERT INTO Mensagem(idMensagem, match, remetente, conteudo, data) VALUES (3, 1, 2, 'Come to Washington.', '2018-03-07');
INSERT INTO Mensagem(idMensagem, match, remetente, conteudo, data) VALUES (4, 1, 5, 'Aint got a plane. Lets meet in the middle', '2018-03-07');
INSERT INTO Mensagem(idMensagem, match, remetente, conteudo, data) VALUES (5, 1, 2, 'Vietnam it is.', '2018-03-07');
INSERT INTO Mensagem(idMensagem, match, remetente, conteudo, data) VALUES (6, 2, 5, 'Xi, you there? I just mathed with Trump, need advice.', '2018-03-06'); -- Kim to Xi
INSERT INTO Mensagem(idMensagem, match, remetente, conteudo, data) VALUES (7, 2, 8, 'Sure, come meet me', '2018-03-07'); -- Xi to Kim

--Denuncia
INSERT INTO Denuncia(idDenuncia, mensagem, descricao, data) VALUES (1, 4, 'I though this app selected by money', '2018-03-07');
