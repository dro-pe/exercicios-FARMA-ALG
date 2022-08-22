program aumento_de_salario;
    var salario, novosalario: real;
    var cargo: longint;
    
    begin
        read(salario, cargo);
        writeln(salario:0:2);
        
        if cargo = 101 then
            novosalario := salario*1.1
        else if cargo = 102 then
            novosalario := salario*1.2
        else if cargo = 103 then
            novosalario := salario*1.3
        else
            novosalario := salario*1.4;
        
        writeln(novosalario:0:2);
        writeln((novosalario - salario):0:2);
    end.
