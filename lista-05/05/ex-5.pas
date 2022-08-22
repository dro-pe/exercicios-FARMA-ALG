program soma_sucessores;
var num, den, i, den_ant: longint;
    soma: real;
    
begin
    i := 0;
    num := 1;
    den := 2;
    soma := 0;
    
    while i < 10 do
    begin
        den_ant := den;
        soma := soma + num/den;
        den := num + 2;
        num := den_ant + 2;
        
        i := i + 1;
    end;
    
    writeln(soma:0:2);
end.
