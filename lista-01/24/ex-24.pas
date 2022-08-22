program soma_dos_termos_pa;
    var n, a1, an: longint;
    var soma: real;
    
    begin
        read(n, a1, an);
        soma := (a1+an)*(n/2);
        writeln(soma:0:0);
    end.
