program div_por_3_e_por_7;
    var n: longint;
    
    begin
        read(n);
        if (n mod 3 = 0) and (n mod 7 = 0) then
            writeln('SIM')
        else
            writeln('NAO');
    end.
