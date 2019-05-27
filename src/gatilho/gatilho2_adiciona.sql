--Trgger 2: click num anuncio atualiza a percentagem de sucesso do tipo de anuncio

Create Trigger T2
After Update Of click On AnuncioTemplate
For Each Row When New.click = 1
Begin
    Update Interesse
    Set nivelInteresse = (select count(*) from AnuncioTemplate where click  = 1) / (select count(*) from AnuncioTemplate) * 100
    Where NOT Exists (SELECT tipoAnuncio, idTipoAnuncio, interesse, idInteresse 
					from AnuncioTemplate, TipoAnuncio, Interesse 
					Where tipoAnuncio = idTipoAnuncio 
					AND interesse = idInteresse);
End;