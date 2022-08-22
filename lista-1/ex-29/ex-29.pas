program ao_contrario;
    var n, d1, d2, d3, m: longint;
    
    begin
        read(n);
        d1 := n div 100;
        d2 := n div 10 mod 10;
        d3 := n mod 10;
        m := d3*100 + d2*10 + d1;
        writeln(m);
    end.
