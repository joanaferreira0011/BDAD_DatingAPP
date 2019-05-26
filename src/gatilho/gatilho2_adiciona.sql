--Trgger 2: click num anuncio atualiza a percentagem de sucesso do tipo de anuncio

Create Trgger N2 
After Update Of click On AnuncioTemplate 
For Each Row When New.click = true
Begin
    Update Interesse
    Set nivelInteresse = (COUNT(*) FROM Interesse Where click  = true) / COUNT(*) FROM Interesse
    Where AnuncioTemplate.tipoAnuncio = TipoAnuncio.idTipoAnuncio
    And TipoAnuncio.interesse = Interesse.idInteresse;
End;