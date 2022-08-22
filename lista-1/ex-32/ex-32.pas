program digito_de_controle;
    var n, d1, d2, d3, c: longint;
    
    begin
        read(n);
        d1 := n div 100;
        d2 := n div 10 mod 10;
        d3 := n mod 10;
        c := (d1 + 3*d2 + 5*d3) mod 7;
        writeln(n*10 + c);
    end.
