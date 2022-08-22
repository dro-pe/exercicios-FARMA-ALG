program idade;
    var d, m, a: longint;
    
    begin
        read(d, m, a);
        if (m < 4) or ((m = 4) and (d <= 29)) then
            writeln(2021 - a)
        else
            writeln(2021 - a - 1);
    end.
