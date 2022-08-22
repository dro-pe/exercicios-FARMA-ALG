program passou;
    var n1, n2, n3, media: real;
    var faltas: longint;
    
    begin
        read(n1, n2, n3, faltas);
        media := (n1 + n2 + n3)/3;
        
        if (faltas >= 10) then
            writeln('NAO')
        else
            begin
            if media < 4 then
                writeln('NAO')
            else if (media >= 4) and (media < 7) then
                writeln('TALVEZ')
            else
                writeln('SIM');
            end;
    end.
