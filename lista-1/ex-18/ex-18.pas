program cubo_ou_quadrado;
    var n: longint;
    
    begin
        read(n);
        if n < 0 then
            writeln(n*n)
        else
            writeln(n*n*n);
    end.
