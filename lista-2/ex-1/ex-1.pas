program fahrenheit_para_celsius;
    var f: longint;
    
    begin
        read(f);
        writeln(((f-32)*5/9):0:2);
        if f <= 32 then
            writeln('solido')
        else if (f > 32) and (f < 212) then
            writeln('liquido')
        else
            writeln('gasoso');
    end.
