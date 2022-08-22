program soma_dos_n_primeiros_fibonacci;
    var n, i, soma, ult, atual: longint;
    
    begin
        read(n);
        i := 1;
        soma := 0;
        ult := 0;
        atual := 1;
        
        while i < n do
        begin
            soma := soma + atual;
            atual := atual + ult;
            ult := atual - ult;
            
            i := i + 1;
        end;
        
        write(soma);
    end.
