program ir_sobre_salario;
    var s: real;
    
    begin
        read(s);
        
        if s <= 540 then
            writeln('NAO')
        else
            if s <= 1424 then
                writeln('1 0.00')
            else if s <= 2150 then
                writeln('2 ',(s*0.075):0:2)
            else if s <= 2866 then
                writeln('3 ',(s*0.15):0:2)
            else if s <= 3582 then
                writeln('4 ',(s*0.225):0:2)
            else
                writeln('5 ',(s*0.275):0:2);
    end.
