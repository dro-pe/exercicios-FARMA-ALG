program emprestimo_concedido;
    var salario, prestacao: longint;
    
    begin
        read(salario, prestacao);
        if prestacao > salario*0.3 then
            writeln('NAO')
        else
            writeln('SIM');
    end.
