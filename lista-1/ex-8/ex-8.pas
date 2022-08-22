program custoaoconsumidor;
    var c_fabrica, c_consumidor: longint;
    var dist, imp: real;
    
    begin
        dist := 0.28;
        imp := 0.45;
        
        read(c_fabrica);
        c_consumidor := trunc(c_fabrica*(1+dist+imp));
        writeln(c_consumidor);
    end.
