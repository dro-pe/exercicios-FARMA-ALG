program propriedade_bacana;
    var n, d12, d34, soma: longint;
    
    begin
        read(n);
        d12 := n div 100;
        d34 := n mod 100;
        soma := d12 + d34;
        if soma*soma = n then
            writeln('SIM')
        else
            writeln('NAO');
    end.
