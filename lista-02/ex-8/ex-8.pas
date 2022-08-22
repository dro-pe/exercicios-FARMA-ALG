program tipo_do_triangulo;
    var a, b, c: longint;
    
    begin
        read(a, b, c);
        
        if (a = b) and (b = c) then
            writeln('Equilatero')
        else if (a <> b) and (a <> c) and (b <> c) then
            writeln('Escaleno')
        else
            writeln('Isosceles');
    end.
