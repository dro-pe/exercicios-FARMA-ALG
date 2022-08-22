program calculadora_imc;
    var peso: longint;
    var altura, imc: real;
    
    begin
        read(peso, altura);
        if altura = 0 then
            writeln('ERRO')
        else
            begin
            imc := peso/(altura*altura);
            writeln(imc:0:2);
            
            if (imc >= 18.5) and (imc <= 25) then
                writeln('SIM')
            else
                writeln('NAO');
            end;
    end.
