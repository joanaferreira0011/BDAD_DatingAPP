--Clean tables
DROP TABLE IF EXISTS AnuncioTemplate;
DROP TABLE IF EXISTS TipoAnuncio;
DROP TABLE IF EXISTS Campanha;
DROP TABLE IF EXISTS Anunciante;
DROP TABLE IF EXISTS Interesse;
DROP TABLE IF EXISTS Denuncia;
DROP TABLE IF EXISTS Mensagem;
DROP TABLE IF EXISTS Encontro;
DROP TABLE IF EXISTS Local;
DROP TABLE IF EXISTS Match;
DROP TABLE IF EXISTS Like;
DROP TABLE IF EXISTS ContaFree;
DROP TABLE IF EXISTS ContaPremium;
DROP TABLE IF EXISTS User;


--Create tables

CREATE TABLE User(
  idUser INTEGER PRIMARY KEY AUTOINCREMENT,
  userName NVARCHAR(50) NOT NULL UNIQUE ,
  primeiroNome NVARCHAR(50) NOT NULL,
  ultimoNome NVARCHAR(50) NOT NULL,
  genero NVARCHAR(50) NOT NULL,
  password NVARCHAR(50) NOT NULL,
  email NVARCHAR(50) NOT NULL,
  dataNascimento TEXT NOT NULL,
  interesses TEXT
);

CREATE TABLE ContaPremium(
  idUser NUMBER REFERENCES User(idUser),
  dataPagamentoInicio TEXT NOT NULL,
  dataPagamentoProximo TEXT NOT NULL,
  saldo REAL NOT NULL
);

CREATE TABLE ContaFree(
  idUser NUMBER REFERENCES User(idUser),
  mesGratisUsado INT NOT NULL --bool
);

CREATE TABLE Anunciante(
  idAnunciante INTEGER PRIMARY KEY AUTOINCREMENT,
  nome NVARCHAR(50) NOT NULL,
  saldo REAL NOT NULL
);


CREATE TABLE Campanha(
  idCampanha INTEGER PRIMARY KEY AUTOINCREMENT,
  conteudo TEXT NOT NULL,
  dataInicio TEXT NOT NULL,
  dataFim TEXT NOT NULL,
  idAnunciante NUMBER REFERENCES Anunciante(idAnunciante),
  custo REAL NOT NULL
);

CREATE TABLE TipoAnuncio(
  idTipoAnuncio INTEGER PRIMARY KEY AUTOINCREMENT,
  data TEXT NOT NULL,
  campanha NUMBER REFERENCES Campanha(idCampanha),
  interesse NUMBER REFERENCES Interesse(idInteresse)
);

CREATE TABLE Interesse(
  idInteresse INTEGER PRIMARY KEY AUTOINCREMENT,
  nivelInteresse INT NOT NULL
);

CREATE TABLE AnuncioTemplate(
  idAnuncioTemplate INTEGER PRIMARY KEY AUTOINCREMENT,
  click INT NOT NULL, --bool
  tipoAnuncio NUMBER REFERENCES TipoAnuncio(idTipoAnuncio)
);


CREATE TABLE Like(
  idLike INTEGER PRIMARY KEY AUTOINCREMENT,
  user1 NUMBER REFERENCES User(idUser),
  user2 NUMBER REFERENCES User(idUser),
  data TEXT NOT NULL
);

CREATE TABLE Match(
  idMatch INTEGER PRIMARY KEY AUTOINCREMENT,
  like1 NUMBER REFERENCES Like(idLike),
  like2 NUMBER REFERENCES Like(idLike)
);

CREATE TABLE Local(
  idLocal INTEGER PRIMARY KEY AUTOINCREMENT,
  morada NVARCHAR(50) NOT NULL,
  pais NVARCHAR(50) NOT NULL
);

CREATE TABLE Encontro(
  idEncontro INTEGER PRIMARY KEY AUTOINCREMENT,
  match NUMBER REFERENCES Match(idMatch),
  local NUMBER REFERENCES Local(idLocal),
  data TEXT NOT NULL
);

CREATE TABLE Denuncia(
  idDenuncia INTEGER PRIMARY KEY AUTOINCREMENT,
  mensagem NUMBER REFERENCES Mensagem(idMensagem),
  descricao TEXT NOT NULL,
  data TEXT NOT NULL
);

CREATE TABLE Mensagem(
  idMensagem INTEGER PRIMARY KEY AUTOINCREMENT,
  match NUMBER REFERENCES Match(idMatch),
  remetente NUMBER REFERENCES User(idUser),
  conteudo TEXT NOT NULL,
  data TEXT NOT NULL
);
