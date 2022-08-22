program soma_dos_quadrados_dos_primeiros_50_inteiros_positivos;
    const max = 50;
    var i, soma: longint;
    
    begin
        soma := 0;
        i := 1;
        while i <= max do
        begin
            soma := soma + i*i;
            i := i + 1;
        end;
        write(soma);
    end.
