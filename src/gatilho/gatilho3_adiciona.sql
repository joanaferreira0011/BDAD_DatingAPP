--Trgger 3: Naõ servir o mesmo anuncio , mais do que uma vezes

Create Trigger T4
Before Insert on AnuncioTemplate 
For Each Row
When exists (select* from ContaFree where idContaFree = Old.contaFree)
Begin
    Select raise(ignore);
End;