program soma_dos_n_primeiros_impares;
    var n, i, soma, impar: longint;
    
    begin
        read(n);
        i := 0;
        soma := 0;
        impar := 1;
        
        while i < n do
        begin
            soma := soma + impar;
            impar := impar + 2;
            i := i + 1;
        end;
        
        write(soma);
    end.
