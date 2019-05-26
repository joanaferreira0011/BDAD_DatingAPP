--Trgger 2: click num anuncio atualiza a percentagem de sucesso do tipo de anuncio

Create Trigger T2 
After Update Of click On AnuncioTemplate 
For Each Row When New.click = 1
Begin
    Update Interesse
    Set nivelInteresse = (count(*) from Interesse where click  = 1)/ (count(*) from Interesse)
    Where AnuncioTemplate.tipoAnuncio = TipoAnuncio.idTipoAnuncio
    And TipoAnuncio.interesse = Interesse.idInteresse;
End;