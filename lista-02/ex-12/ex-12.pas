program saldo_medio;
    var sm: real;
    
    begin
        read(sm);
        writeln(sm:0:0);
        
        if sm <= 200 then
            writeln('0')
        else if sm <= 400 then
            writeln('20%')
        else if sm <= 600 then
            writeln('30%')
        else
            writeln('40%');
    end.
