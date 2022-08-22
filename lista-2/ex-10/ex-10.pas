program agiotagem;
    var cod, qtde: longint;
    
    begin
        read(cod, qtde);
        
        if cod = 1001 then
            writeln((5.32*qtde):0:2)
        else if cod = 1324 then
            writeln((6.45*qtde):0:2)
        else if cod = 6548 then
            writeln((2.37*qtde):0:2)
        else if cod = 987 then
            writeln((5.32*qtde):0:2)
        else if cod = 7623 then
            writeln((6.45*qtde):0:2)
        else
            writeln('ERRO');
    end.
