.mode columns
.headers on
.nullvalue NULL

DROP VIEW IF EXISTS saldos;

Create view saldos as
select sum(Anunciante.saldo) as saldoAnunciante, sum(ContaPremium.saldo) as saldoContaPremium
from Anunciante, ContaPremium;

select saldoAnunciante+saldoContaPremium as saldoTotal
from saldos;

DROP VIEW IF EXISTS saldos;
