--Clean tables
DROP TABLE IF EXISTS Campanha;
DROP TABLE IF EXISTS Anunciante;
DROP TABLE IF EXISTS ContaFree;
DROP TABLE IF EXISTS ContaPremium;
DROP TABLE IF EXISTS User;


--Create tables

CREATE TABLE User(
  idUser INTEGER PRIMARY KEY AUTOINCREMENT,
  userName NVARCHAR(50) NOT NULL,
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
  dataPagamentoFim TEXT NOT NULL,
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
