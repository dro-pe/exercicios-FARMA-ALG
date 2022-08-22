program entre_20_e_90;
    var n: longint;
    
    begin
        read(n);
        if (n > 20) and (n < 90) then
            writeln('SIM')
        else
            writeln('NAO');
    end.
