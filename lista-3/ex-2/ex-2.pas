program faixa_salarial;
    const min = 450;
    var f1, f2, f3, f4, n: longint;
        salario, pf1, pf2, pf3, pf4: real;
        
    begin
        f1 := 0;
        f2 := 0;
        f3 := 0;
        f4 := 0;
        
        read(salario);
        
        while salario <> 0 do
        begin
            if salario <= 3*min then
                f1 := f1 + 1
            else if salario <= 9*min then
                f2 := f2 + 1
            else if salario <= 20*min then
                f3 := f3 + 1
            else
                f4 := f4 + 1;
                
            read(salario);
        end;
        
        n := f1 + f2 + f3 + f4;
        
        pf1 := (f1/n)*100;
        pf2 := (f2/n)*100;
        pf3 := (f3/n)*100;
        pf4 := (f4/n)*100;
        
        writeln(pf1:0:2);
        writeln(pf2:0:2);
        writeln(pf3:0:2);
        write(pf4:0:2);
    end.
