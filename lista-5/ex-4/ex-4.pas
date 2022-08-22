program soma_fracoes_maluca;
var num_ant, num, den, i: longint;
    soma: real;

begin
    i := 0;
    soma := 0;
    num := 1;
    den := 3;
    
    while i < 10 do
    begin
        num_ant := num;
        soma := soma + num/den;
        num := 2*den;
        den := 2*num_ant;
        i := i + 1;
    end;
    
    writeln(soma:0:2);
end.
