program esse_ngc_ai;
    var n: longint;
    
    begin
        read(n);
        if ((n mod 2 <> 0) and (n < -20)) or ((n mod 2 = 0) and (n > 7)) then
            writeln('SIM')
        else
            writeln('NAO');
    end.
