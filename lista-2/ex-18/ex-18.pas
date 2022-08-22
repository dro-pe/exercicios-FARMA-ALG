program mult_dos_n_primeiros_pares;
    var n, i, mult, aux: longint;
    
    begin
        read(n);
        i := 0;
        mult := 1;
        aux := 2;
        
        while i < n do
        begin
            mult := mult*aux;
            aux := aux + 2;
            i := i + 1;
        end;
        
        write(mult);
    end.
