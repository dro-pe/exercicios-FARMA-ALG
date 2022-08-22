program ja_vai_comecar_o_pograma;
    var ano, idade: longint;
    
    begin
        read(ano);
        idade := 2020 - ano;
        writeln(idade);
        if idade >= 16 then
            writeln('SIM')
        else
            writeln('NAO');
        if idade >= 18 then
            writeln('SIM')
        else
            writeln('NAO');
    end.
