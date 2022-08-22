program numero_ou_oposto;
    var n: longint;
    
    begin
        read(n);
        if (n > -15) and (n < 30) then
            writeln(-n)
        else
            writeln(n);
    end.
