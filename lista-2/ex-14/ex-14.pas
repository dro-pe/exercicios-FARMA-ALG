program poligono_regular;
    var n, l: longint;
    
    begin
        read(n, l);
        
        if (n < 3) or (n > 5) then
            writeln('ERRO')
        else
            if n = 3 then
                writeln('TRIANGULO ', l*3)
            else if n = 4 then
                writeln('QUADRADO ', l*l)
            else if n = 5 then
                writeln('PENTAGONO');
    end.
