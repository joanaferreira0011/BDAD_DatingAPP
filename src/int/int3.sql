.mode columns
.headers on
.nullvalue NULL

Select Anunciante.nome,c, max(acceptance) as aceitacao
from Anunciante, (
select Campanha.idAnunciante as a, Campanha.conteudo as c, 1.0*sum(AnuncioTemplate.click)/count(AnuncioTemplate.click) as acceptance
from TipoAnuncio, AnuncioTemplate, Campanha
where AnuncioTemplate.tipoAnuncio=TipoAnuncio.idTipoAnuncio
      and TipoAnuncio.campanha=Campanha.idCampanha
group by Campanha.idCampanha) as campanhas
where campanhas.a = Anunciante.idAnunciante;
