program n_mod_m;
    var n, m: longint;
    
    begin
        read(n, m);
        if n mod m = 0 then
            writeln('SIM')
        else
            writeln('NAO');
    end.
