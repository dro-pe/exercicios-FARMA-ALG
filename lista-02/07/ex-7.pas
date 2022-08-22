program area_do_trapezio;
    var b_inf, b_sup, h: longint;
    var area: real;
    
    begin
        read(b_inf, b_sup, h);
        area := (b_inf + b_sup)*h/2;
        writeln(area:0:2);
        
        if (b_inf = b_sup) and (b_inf = h) then
            writeln('SIM')
        else
            writeln('NAO');
    end.
