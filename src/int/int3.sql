.mode columns
.headers on
.nullvalue NULL


select Anunciante.nome, Campanha.conteudo, 1.0*sum(AnuncioTemplate.click)/count(AnuncioTemplate.click) as acceptance
from TipoAnuncio, AnuncioTemplate, Campanha, Anunciante
where AnuncioTemplate.tipoAnuncio=TipoAnuncio.idTipoAnuncio
      and TipoAnuncio.campanha=Campanha.idCampanha
      and Campanha.idAnunciante=Anunciante.idAnunciante
group by Anunciante.idAnunciante;
